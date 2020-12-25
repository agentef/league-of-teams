import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_header.dart';

class StatisticsPageNoMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(Icons.error, color: CustomColors.appColorScheme.error, size: 48),
          SelectableText(MessagesEnum.SP_no_matches_found.get.tr, style: TextStyles.SmallErrorTextStyle)
        ],
      ),
    );
  }
}
