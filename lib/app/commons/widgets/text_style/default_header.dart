import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';

class TextStyles {
  static const DefaultHeaderTextStyle = TextStyle(
    color: Colors.black87,
    fontSize: 18,
    fontWeight: FontWeight.w600
  );

  static const DefaultErrorTextStyle = TextStyle(
    color: Colors.black87,
    fontSize: 18,
    fontWeight: FontWeight.w600
  );

  static const SmallErrorTextStyle = TextStyle(
      color: Colors.black87,
      fontSize: 16,
      fontWeight: FontWeight.w500
  );

  static const DefaultTitleTextStyle = TextStyle(
    color: Colors.black87,
    fontSize: 32,
    fontWeight: FontWeight.w700
  );

  static final DefaultTextStyle = TextStyle(
    color: CustomColors.appColorScheme.onBackground,
    fontSize: 16,
    fontWeight: FontWeight.w600
  );
}