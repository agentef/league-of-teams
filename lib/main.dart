import 'package:flutter/material.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'configuration/configuration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'League of Teams',
      theme: ThemeData(
        fontFamily: Fonts.QUICKSAND,
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: Configuration.routes,
      // home: StatisticsPage(Mock.statsMock),
    );
  }
}

