import 'dart:core';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'objects/comps_params.dart';

class StatisticsService {
  final _dio = Dio(BaseOptions(baseUrl: "${Constants.BASE_URL}/stats/"));

  Future<TeamStatsDTO> getCompsBySummonerNames(String summoners, CompsParams params) async {
    try {
      log('m=getCompsBySummonerNames, stage=init, summoners=$summoners, params=$params');
      final response = await _dio.get('comps/$summoners',
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

  Future<MatchListDto> getMatchListBySummonerNames(String summoners, CompsParams params) async {
    try {
      log('m=getCompsBySummonerNames, stage=init, summoners=$summoners, params=$params');
      final response = await _dio.get('comps/matchList/$summoners',
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
      final matchListDto = MatchListDto.fromJson(response.data);
      log('m=getCompsBySummonerNames, stage=finished, summoners=$summoners, params=$params, response=$matchListDto');
      return matchListDto;
    } on DioError catch (e) {
      log('m=getCompsBySummonerNames, stage=error, summoners=$summoners, params=$params, message=${e.response.statusCode}: ${e.error}');
      throw e;
    }
  }

  Future<TeamStatsDTO> getCompsByMatchList(MatchListDto request, CompsParams params) async {
    final summonerList = request.summoners.map((e) => e.name).toList();
    try {
      log('m=getCompsBySummonerNames, stage=init, summoners=$summonerList');
      final response = await _dio.post('comps/matchList',
          data: request.toJson(),
          options: Options(
            headers: {
              Header.REGION: params.region,
              Header.LANGUAGE: params.language,
            },
          ));
      log('received response: $response');

      final teamStatsDTO = TeamStatsDTO.fromJson(response.data);
      log('m=getCompsBySummonerNames, stage=finished, summoners=$summonerList, params=$params, response=$teamStatsDTO');
      return teamStatsDTO;
    } on DioError catch (e) {
      log('m=getCompsBySummonerNames, stage=error, summoners=$summonerList, params=$params, message=${e.error}');
      throw e;
    }
  }
}
