import 'dart:core';

import 'package:dio/dio.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'objects/comps_params.dart';

class StatisticsService {
  final _dio = Dio(BaseOptions(baseUrl: "${Constants.BASE_URL}/stats/"));

  Future<MatchListDTO> getMatchListBySummonerNames(String summoners, CompsParams params) async {
    try {
      final response = await _dio.get(
          'comps/matchList/$summoners',
          queryParameters: {
            'days': params.days,
            'endIndex': params.endIndex,
            'beginIndex': params.beginIndex,
            'queues': params.queues
          },
          options: Options(
            headers: {
              Header.REGION: params.region,
              Header.LANGUAGE: params.language
            }
            ));

      return MatchListDTO.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response.statusCode == 404) throw e;
      await Future.delayed(Duration(seconds: 15));
      return getMatchListBySummonerNames(summoners, params);
    }
  }

  Future<TeamStatsDTO> getCompsByMatchList(MatchListDTO request, CompsParams params) async {
    try {
      final response = await _dio.post(
          'comps/matchList',
          data: request.toJson(),
          options: Options(
            headers: {
              Header.REGION: params.region,
              Header.LANGUAGE: params.language
            }
            ));

      return TeamStatsDTO.fromJson(response.data);
    } on DioError {
      await Future.delayed(Duration(seconds: 15));
      return getCompsByMatchList(request, params);
    }
  }
}
