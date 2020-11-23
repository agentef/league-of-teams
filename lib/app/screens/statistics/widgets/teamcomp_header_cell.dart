import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'teamcomp_general_stats_slot.dart';
import 'teamcomp_header_cell_slot.dart';

class TeamCompHeaderCell extends StatelessWidget {
  final TeamStatsDTO dto;
  final List<TeamCompHeaderCellSlot> summonerCellSlots;

  TeamCompHeaderCell(this.dto, this.summonerCellSlots);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
        decoration: ShapeDecoration(
            color: CustomColors.appColorScheme.surface,
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: CustomColors.appColorScheme.primary), borderRadius: BorderRadius.circular(8))),
        child: Row(children: [dto == null ? SizedBox(height: 140, width: 140) : TeamCompGeneralStatsSlot(dto)] + summonerCellSlots));
  }
}
