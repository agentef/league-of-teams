import 'package:league_team_analytics/service/statistics_service_stub.dart'
    if (dart.library.io) 'package:league_team_analytics/service/statistics_service_grpc.dart'
    if (dart.library.html) 'package:league_team_analytics/service/statistics_service.dart';


class StatisticsServiceFactory  {
  static get() => init();

}