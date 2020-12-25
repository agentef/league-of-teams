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
              SelectableText(MessagesEnum.SP_totals.get.tr, style: StatisticsPageTextStyles.summonerNameTextStyle),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(MessagesEnum.SP_games.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  SelectableText(stats.totalGames.toString(), style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(MessagesEnum.SP_win_rate.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  SelectableText("${(stats.totalWinRate * 100).toStringAsFixed(2)}%", style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(MessagesEnum.SP_wins.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  SelectableText(stats.totalWins.toString(), style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(MessagesEnum.SP_loses.get.tr, style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  SelectableText(stats.totalLoses.toString(),style: StatisticsPageTextStyles.generalStatsValueTextStyle,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
