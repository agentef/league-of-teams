import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/service/objects/comps_params.dart';

abstract class StatisticsServiceStub {
  Future<MatchListDTO> getMatchListBySummonerNames(String summoners, CompsParams params);
  Future<TeamStatsDTO> getCompsByMatchList(MatchListDTO request, CompsParams params);
}

StatisticsServiceStub init() => throw UnimplementedError("Invalid Service init attempt!");