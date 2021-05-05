import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompStatsSlot extends StatelessWidget {
  final LocalCompStats compStats;

  TeamCompStatsSlot(this.compStats);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      height: 76,
      width: 178,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(MessagesEnum.SP_total_games.get.tr, style: StatisticsPageTextStyles.statsNameTextStyle),
              SelectableText("${compStats.totalGames}", style: StatisticsPageTextStyles.statsValueTextStyle)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(MessagesEnum.SP_win_rate.get.tr, style: StatisticsPageTextStyles.statsNameTextStyle),
              SelectableText("${compStats.winRate.toStringAsFixed(2)}%", style: StatisticsPageTextStyles.statsValueTextStyle)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(MessagesEnum.SP_wins.get.tr, style: StatisticsPageTextStyles.statsNameTextStyle),
              SelectableText("${compStats.wins}", style: StatisticsPageTextStyles.statsValueTextStyle)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(MessagesEnum.SP_loses.get.tr, style: StatisticsPageTextStyles.statsNameTextStyle),
              SelectableText("${compStats.loses}", style: StatisticsPageTextStyles.statsValueTextStyle)
            ],
          ),
        ],
      ),
    );
  }
}
