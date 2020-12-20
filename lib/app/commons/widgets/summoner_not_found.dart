import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_header.dart';

class SummonerNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, color: CustomColors.appColorScheme.error, size: 64),
          Text(MessagesEnum.SP_summoner_not_found.get.tr, style: TextStyles.DefaultErrorTextStyle)
        ],
      ),
    );
  }
}
