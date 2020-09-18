import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/view/pages/home.dart';

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
        fontFamily: "quicksand",
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        // '/': (BuildContext context) => Home(),
      },
      home: Home(),
    );
  }
}

