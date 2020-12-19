import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompGeneralStatsSlot extends StatelessWidget {
  final TeamStatsDTO stats;

  TeamCompGeneralStatsSlot(this.stats);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 206,
        height: 140,
        child: Container(
          padding: const EdgeInsets.only(left: 8.0, right: 16.0),
          child: Column(
            children: [
              SizedBox(height: 8),
              Text(MessagesEnum.SP_totals.get.tr, style: StatisticsPageTextStyles.summonerNameTextStyle),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(MessagesEnum.SP_games.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text(stats.totalGames.toString(), style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(MessagesEnum.SP_win_rate.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text("${(stats.totalWinRate * 100).toStringAsFixed(2)}%", style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(MessagesEnum.SP_wins.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text(stats.totalWins.toString(), style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(MessagesEnum.SP_loses.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text(stats.totalLoses.toString(),style: StatisticsPageTextStyles.generalStatsValueTextStyle,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
