import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/widgets/loading_screen.dart';
import 'package:league_team_analytics/app/commons/widgets/main_container.dart';
import 'package:league_team_analytics/app/screens/statistics/widgets/teamcomp_header_cell.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/service/objects/comps_params.dart';

import 'controller/statistics_controller.dart';
import 'widgets/teamcomp_cell.dart';
import 'widgets/teamcomp_header_cell_slot.dart';

class StatisticsPage extends StatelessWidget {
  final _statisticsController = StatisticsController();

  @override
  Widget build(BuildContext context) {
    final params = CompsParams(Get.parameters['region'], "BRAZIL", int.parse(Get.parameters['days']), null, null, null);
    return Obx(() {
      final matchListDto = _statisticsController.matchListDTO.value;
      if (matchListDto == null) {
        _statisticsController.searchMatchList(Get.parameters['summoners'], params);
        return MainContainer(LoadingScreen());
      }

      final teamStatsDTO = _statisticsController.teamStatsDTO.value;
      Widget statisticsView;
      if (teamStatsDTO == null) {
        _statisticsController.searchMatches(matchListDto, params);
        statisticsView = LoadingScreen();
      } else {
        if (matchListDto.totalGames > teamStatsDTO.totalGames)
          Future.delayed(Duration(seconds: 2)).then((value) => _statisticsController.searchMatches(matchListDto, params));

        final cells = getCells(teamStatsDTO, matchListDto.version);
        statisticsView = ListView.builder(
          itemCount: cells.length,
          itemBuilder: (context, index) => cells[index],
        );
      }
      return MainContainer(Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 172 + 206.0 * matchListDto.summoners.length),
            child: Column(
              children: [
                Container(margin: EdgeInsets.all(32), child: TeamCompHeaderCell(teamStatsDTO, getSummonerCells(matchListDto))),
                Expanded(child: Container(margin: EdgeInsets.symmetric(horizontal: 32), child: statisticsView))
              ],
            ),
      )));
    });
  }

  List<TeamCompCell> getCells(TeamStatsDTO dto, String version) => dto.compStats.map((it) => TeamCompCell(it, dto.summoners, version)).toList();

  List<TeamCompHeaderCellSlot> getSummonerCells(MatchListDto dto) => dto.summoners.map((it) => TeamCompHeaderCellSlot(it, dto.version)).toList();
}
