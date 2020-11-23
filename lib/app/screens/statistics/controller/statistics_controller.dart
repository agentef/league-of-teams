import 'package:get/get.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/service/objects/comps_params.dart';
import 'package:league_team_analytics/service/statistics_service.dart';

class StatisticsController {

  final _service = StatisticsService();

  final matchListDTO = Rx<MatchListDto>();
  final teamStatsDTO = Rx<TeamStatsDTO>();

  void searchMatchList(String summoners, CompsParams params) async => matchListDTO(await _service.getMatchListBySummonerNames(summoners, params));

  void searchMatches(MatchListDto matchList, CompsParams params) async => teamStatsDTO(await _service.getCompsByMatchList(matchList, params));

}