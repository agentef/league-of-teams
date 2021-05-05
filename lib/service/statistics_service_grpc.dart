import 'package:grpc/grpc.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'package:league_team_analytics/models/generated/StatsController.pb.dart';
import 'package:league_team_analytics/models/generated/StatsController.pbgrpc.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/service/objects/comps_params.dart';
import 'package:league_team_analytics/service/statistics_service_stub.dart';

class GRPCClient {
  ClientChannel client;
  static final GRPCClient singleton = new GRPCClient._internal();

  factory GRPCClient() => singleton;

  GRPCClient._internal() {
    client = ClientChannel(
        "127.0.0.1", // Your IP here, localhost might not work.
        port: 7575,
        options: ChannelOptions(

          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }
}

class StatisticsGRPCService extends StatisticsServiceStub {

  Future<MatchListResponse> getMatchlistBySummoners(GetMatchlistRequest request) async =>
      await StatsControllerClient(GRPCClient
          ._internal()
          .client).getMatchlistBySummoners(request);

  Future<CompStatsResponse> getMostPlayedCompsByMatchList(MatchlistRequest request) async =>
      await StatsControllerClient(GRPCClient
          ._internal()
          .client).getMostPlayedCompsByMatchList(request);

  @override
  Future<LocalTeamStatsDTO> getCompsByMatchList(MatchListDTO request, CompsParams params) async {
    final matchlistRequest = MatchlistRequest.create()
      ..matchIds.addAll(request.matchIds)
      ..totalGames = request.totalGames
      ..language = params.language
      ..region = params.region
      ..summoners
          .addAll(request.summoners.map((e1) => DetailedSummoner()
              .summonerLeagues.addAll(e1.summonerLeagues.map((e2) =>
                    LeagueEntryDTO()
                      ..freshBlood = e2.freshBlood
                      ..hotStreak = e2.hotStreak
                      ..leagueId = e2.leagueId
                      ..inactive = e2.inactive
                      ..leaguePoints = e2.leaguePoints
                      ..losses = e2.losses
                      ..wins = e2.wins
                      ..rank = e2.rank
                      ..queueType = e2.queueType
                      ..veteran = e2.veteran
                      ..tier = e2.tier
                      ..summonerId = e2.summonerId
                      ..summonerName = e2.summonerName
                      ..miniSeries = (MiniSeriesDTO()
                                          ..wins = e2.miniSeries.wins
                                          ..losses = e2.miniSeries.losses
                                          ..progress = e2.miniSeries.progress
                                          ..target = e2.miniSeries.target)))).cast());


    final response = await getMostPlayedCompsByMatchList(matchlistRequest);
    final compStatsList = response.compStats.map((e) => LocalCompStats(
        e.totalGames,
        e.winRate,
        e.wins,
        e.loses,
        SummonerStats.from(e.summoner1Info),
        SummonerStats.from(e.summoner2Info),
        SummonerStats.from(e.summoner3Info),
        SummonerStats.from(e.summoner4Info),
        SummonerStats.from(e.summoner5Info)));

    return LocalTeamStatsDTO(compStatsList,
        DateTime.utc(0, 0, 0, 0, 0, response.firstGameDate.seconds.toInt(), 0, 1000 * response.firstGameDate.nanos),
        DateTime.utc(0, 0, 0, 0, 0, response.lastGameDate.seconds.toInt(), 0, 1000 * response.lastGameDate.nanos),
        response.summoners.map((e) => LocalSummonerDTO.from(e)),
        response.totalGames,
        response.totalWinRate,
        response.totalWins,
        response.totalLoses);
  }

  @override
  Future<MatchListDTO> getMatchListBySummonerNames(String summoners, CompsParams params) async {
    final request = GetMatchlistRequest()
    ..summoners = summoners
    ..language = params.language
    ..region = params.region
    ..queues = params.queues
    ..beginIndex = params.beginIndex
    ..endIndex = params.endIndex
    ..days = params.days;

    return MatchListDTO.from(await getMatchlistBySummoners(request));
  }

}

StatisticsServiceStub init() => StatisticsGRPCService();