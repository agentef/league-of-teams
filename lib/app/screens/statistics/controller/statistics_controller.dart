import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/service/objects/comps_params.dart';
import 'file:///E:/Dev/League%20Team%20Analytics/league_team_analytics/lib/service/statistics_service_factory.dart';

class StatisticsController {

  final _service = StatisticsServiceFactory.get();

  final error = false.obs;
  final matchListDTO = Rx<MatchListDTO>();
  final teamStatsDTO = Rx<TeamStatsDTO>();
  final progress = 0.0.toDouble().obs;
  final isVisible = true.obs;

  void searchMatchList(String summoners, CompsParams params) async {
    try {
      matchListDTO(await _service.getMatchListBySummonerNames(summoners, params));
    } on DioError {
      error(true);
    }
  }

  void searchMatches(MatchListDTO matchList, CompsParams params) async {
    teamStatsDTO(await _service.getCompsByMatchList(matchList, params));
    progress(teamStatsDTO.value.totalGames / matchListDTO.value.totalGames);
  }

}