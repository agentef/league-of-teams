import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/screens/home/home_page.dart';
import 'package:league_team_analytics/app/screens/statistics/statistics_page.dart';

class Configuration {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/comps' : (BuildContext context) => StatisticsPage()
  };

}