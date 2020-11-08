import 'package:flutter/material.dart';
import 'package:league_team_analytics/screens/statistics/statisticsPage.dart';

import '../screens/home/homePage.dart';
class Configuration {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/comps' : (BuildContext context) => StatisticsPage()
  };
}