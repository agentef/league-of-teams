import 'package:dio/dio.dart';
import 'package:league_team_analytics/configuration/constants.dart';

class DataDragonService {

  final _dio = Dio(BaseOptions(baseUrl: "${Constants.BASE_URL}/stats/"));


}