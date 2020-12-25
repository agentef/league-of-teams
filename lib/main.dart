import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/commons/translations/messages.dart';
import 'app/screens/home/home_page.dart';
import 'app/screens/statistics/statistics_page.dart';
import 'configuration/configuration.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    box.writeIfNull(Constants.LANGUAGE, Get.deviceLocale.languageCode + "_" + Get.deviceLocale.countryCode);

    final app = GetMaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          minWidth: 180,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(400, name: MOBILE, scaleFactor: 0.33),
            ResponsiveBreakpoint.autoScale(800, name: TABLET, scaleFactor: 0.5),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      translations: Messages(),
      locale: Locale(box.read(Constants.LANGUAGE)),
      fallbackLocale: Locale('en', 'US'),
      title: Constants.TITLE,
      theme: ThemeData.from(colorScheme: CustomColors.appColorScheme, textTheme: TextTheme().apply(fontFamily: Fonts.QUICKSAND)),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/stats', page: () => StatisticsPage()),
      ],
      initialRoute: '/',
      routes: Configuration.routes,
    );

    if (Get.width < 800) return InteractiveViewer(child: app);
    return app;
  }
}
