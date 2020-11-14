import 'package:flutter/material.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompStatsSlot extends StatelessWidget {

  final CompStats compStats;

  TeamCompStatsSlot(this.compStats);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.only(right: 8),
      height: 72,
      width: 128,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total games:", style: StatisticsPageTextStyles.statsNameTextStyle,),
            Text("${compStats.totalGames}", style: StatisticsPageTextStyles.statsValueTextStyle,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Win rate:", style: StatisticsPageTextStyles.statsNameTextStyle,),
            Text("${compStats.winRate.toStringAsFixed(2)}%", style: StatisticsPageTextStyles.statsValueTextStyle,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Wins:", style: StatisticsPageTextStyles.statsNameTextStyle,),
            Text("${compStats.wins}", style: StatisticsPageTextStyles.statsValueTextStyle,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Loses: ", style: StatisticsPageTextStyles.statsNameTextStyle,),
            Text("${compStats.loses}", style: StatisticsPageTextStyles.statsValueTextStyle,)
          ],
        ),

      ],
    ),);
  }
}
