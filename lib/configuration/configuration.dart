import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/screens/home/homePage.dart';
import 'package:league_team_analytics/app/screens/statistics/statisticsPage.dart';

class Configuration {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/comps' : (BuildContext context) => StatisticsPage()
  };

}