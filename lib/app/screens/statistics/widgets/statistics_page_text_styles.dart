import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';

class StatisticsPageTextStyles {
  static get summonerNameTextStyle        => TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CustomColors.appColorScheme.primaryVariant);
  static get championNameTextStyle        => TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: CustomColors.appColorScheme.onPrimary);
  static get kdaHeaderTextStyle           => TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: CustomColors.appColorScheme.onPrimary);
  static get kdaValueTextStyle            => TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CustomColors.appColorScheme.onSecondary);
  static get generalStatsHeaderTextStyle  => TextStyle(fontWeight: FontWeight.w400, color: CustomColors.appColorScheme.primary);
  static get generalStatsValueTextStyle   => TextStyle(fontWeight: FontWeight.w600, color: CustomColors.appColorScheme.primary);
  static get statsNameTextStyle           => TextStyle(fontWeight: FontWeight.w400, color: CustomColors.appColorScheme.onPrimary);
  static get statsValueTextStyle          => TextStyle(fontWeight: FontWeight.w600, color: CustomColors.appColorScheme.onPrimary);
}
