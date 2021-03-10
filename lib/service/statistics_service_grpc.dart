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
        "localhost", // Your IP here, localhost might not work.
        port: Constants.grpcPort,
        options: ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));

  }
}

class StatisticsGRPCService extends StatisticsServiceStub {

  Future<MatchListResponse> getMatchlistBySummoners(GetMatchlistRequest request) async => await StatsControllerClient(GRPCClient._internal().client).getMatchlistBySummoners(request);

  Future<CompStatsResponse> getMostPlayedCompsByMatchList(MatchlistRequest request) async => await StatsControllerClient(GRPCClient._internal().client).getMostPlayedCompsByMatchList(request);

  @override
  Future<TeamStatsDTO> getCompsByMatchList(MatchListDTO request, CompsParams params) {
    // TODO: implement getCompsByMatchList
    throw UnimplementedError();
  }

  @override
  Future<MatchListDTO> getMatchListBySummonerNames(String summoners, CompsParams params) {
    // TODO: implement getMatchListBySummonerNames
    throw UnimplementedError();
  }

}
StatisticsServiceStub init() => StatisticsGRPCService();