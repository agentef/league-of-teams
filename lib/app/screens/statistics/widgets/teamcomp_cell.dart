import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'teamcomp_slot.dart';
import 'teamcomp_stats_slot.dart';

class TeamCompCell extends StatelessWidget {
  final LocalCompStats compStats;
  final List<LocalSummonerDTO> summoners;
  final String _version;

  TeamCompCell(this.compStats, this.summoners, this._version);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 5,
      shadowColor: CustomColors.appColorScheme.primaryVariant,
      margin: EdgeInsets.all(8),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [CustomColors.appColorScheme.primary, CustomColors.appColorScheme.primaryVariant],
              stops: [0.1, 0.2]),
        ),
        child: Row(
          children: [
            TeamCompStatsSlot(compStats),
            TeamCompSlot(compStats.summoner1Info, _version),
            TeamCompSlot(compStats.summoner2Info, _version),
            TeamCompSlot(compStats.summoner3Info, _version),
            TeamCompSlot(compStats.summoner4Info, _version),
            TeamCompSlot(compStats.summoner5Info, _version)
          ],
        ),
      ),
    );
  }
}
