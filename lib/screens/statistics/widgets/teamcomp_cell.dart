import 'package:flutter/material.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_slot.dart';

import 'teamcomp_stats_slot.dart';

class TeamCompCell extends StatelessWidget {
  final CompStats compStats;
  final List<SummonerDTO> summoners;

  TeamCompCell(this.compStats, this.summoners);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
        child: Row(
            children: [
                TeamCompStatsSlot(compStats),
                TeamCompSlot(compStats.summoner1Info),
                TeamCompSlot(compStats.summoner2Info),
                TeamCompSlot(compStats.summoner3Info),
                TeamCompSlot(compStats.summoner4Info),
                TeamCompSlot(compStats.summoner5Info)
            ],

        )
    );
  }
}
