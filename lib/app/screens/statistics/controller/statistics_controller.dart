import 'package:get/get.dart';
import 'package:league_team_analytics/bloc_services/objects/comps_params.dart';
import 'package:league_team_analytics/bloc_services/statistics_service.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

class StatisticsController {

  final _service = StatisticsService();

  final matchListDto = Rx<MatchListDto>();
  final teamStatsDTO =  Rx<TeamStatsDTO>();

  void searchMatchList(String summoners, CompsParams params) async {
    matchListDto(await _service.getMatchListBySummonerNames(summoners, params));
  }
  void searchMatches(MatchListDto matchList, CompsParams params) async {
    teamStatsDTO(await _service.getCompsByMatchList(matchList, params));
  }

}