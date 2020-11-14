import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:league_team_analytics/configuration/constants.dart';

import 'app/commons/translations/messages.dart';
import 'app/screens/home/homePage.dart';
import 'app/screens/statistics/statisticsPage.dart';
import 'configuration/configuration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('pt', 'BR'),
      fallbackLocale: Locale('en', 'US'),
      title: 'League of Teams',
      theme: ThemeData(
        fontFamily: Fonts.QUICKSAND,
        primarySwatch: Colors.teal,
        primaryIconTheme: IconThemeData(color: Colors.white, size: 48),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/stats', page: () => StatisticsPage())
      ],
      initialRoute: '/',
      routes: Configuration.routes,
    );
  }
}

