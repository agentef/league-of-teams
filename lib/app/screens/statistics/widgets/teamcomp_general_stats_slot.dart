import 'package:flutter/material.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompGeneralStatsSlot extends StatelessWidget {
  final TeamStatsDTO stats;

  TeamCompGeneralStatsSlot(this.stats);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 140,
        height: 140,
        child: Container(
          padding: const EdgeInsets.only(left: 8.0, right: 16.0),
          child: Column(
            children: [
              SizedBox(height: 8),
              Text("Totals:", style: StatisticsPageTextStyles.summonerNameTextStyle),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Games:', style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text(stats.totalGames.toString(), style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Win rate:', style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text("${(stats.totalWinRate * 100).toStringAsFixed(2)}%", style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wins:', style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text(stats.totalWins.toString(), style: StatisticsPageTextStyles.generalStatsValueTextStyle)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Loses:', style: StatisticsPageTextStyles.generalStatsHeaderTextStyle),
                  Text(stats.totalLoses.toString(),style: StatisticsPageTextStyles.generalStatsValueTextStyle,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
