import 'dart:core';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'objects/comps_params.dart';

class StatisticsService {
  final _dio = Dio(BaseOptions(baseUrl: "${Constants.BASE_URL}/stats/"));

  Future<TeamStatsDTO> getCompsBySummonerNames(String summoners, CompsParams params) async {
    try {
      log('m=getCompsBySummonerNames, stage=init, summoners=$summoners, params=$params');
      final response = await _dio.get(
          'comps/$summoners',
          queryParameters: {
            'endDate': params.endDate,
            'initialDate': params.initialDate,
            'endIndex': params.endIndex,
            'beginIndex': params.beginIndex,
            'queues': params.queues
          },
          options: Options(
            headers: {
              Header.REGION: params.region,
              Header.LANGUAGE: params.language,
            },
          ));
      var teamStatsDTO = TeamStatsDTO.fromJson(response.data);
      log('m=getCompsBySummonerNames, stage=finished, summoners=$summoners, params=$params, response=$teamStatsDTO');
      return teamStatsDTO;
    } on DioError catch (e) {
      log('m=getCompsBySummonerNames, stage=error, summoners=$summoners, params=$params, message=${e.response.statusCode}: ${e.error}');
      throw e;
    }
  }
}
