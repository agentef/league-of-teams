import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/widgets/loading_screen.dart';
import 'package:league_team_analytics/app/commons/widgets/main_container.dart';
import 'package:league_team_analytics/bloc_services/objects/comps_params.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'controller/statistics_controller.dart';
import 'widgets/teamcomp_cell.dart';
import 'widgets/teamcomp_general_stats_slot.dart';
import 'widgets/teamcomp_header_cell.dart';

class StatisticsPage extends StatelessWidget {
  final _statisticsController = StatisticsController();

  final color1 = Colors.blueGrey.withOpacity(0.60);
  final color2 = Colors.grey.withOpacity(0.60);

  @override
  Widget build(BuildContext context) {
    final params = CompsParams(Get.parameters['region'], "BRAZIL", null, null, null, Get.parameters['matches'].isNotEmpty ? Get.parameters['matches'] as int : 500, 0);
    return Obx(() {
      final matchListDto = _statisticsController.matchListDto.value;
      if (matchListDto == null) {
        _statisticsController.searchMatchList(Get.parameters['summoners'], params);
        return MainContainer(LoadingScreen());
      }
      final summonerCells = getSummonerCells(matchListDto);

      final teamStatsDTO = _statisticsController.teamStatsDTO.value;
      final headerCells = getHeaderCells(teamStatsDTO, summonerCells);
      Widget statisticsPage;
      if (teamStatsDTO == null) {
        _statisticsController.searchMatches(matchListDto, params);
        statisticsPage = LoadingScreen();
      } else {
        if (matchListDto.totalGames > teamStatsDTO.totalGames) {
          Future.delayed(Duration(seconds: 2)).then((value) {
            _statisticsController.searchMatches(matchListDto, params);
          });
        }
        final cells = getCells(teamStatsDTO);

        statisticsPage = ListView.builder(
          padding: EdgeInsets.all(24),
          itemCount: cells.length,
          itemBuilder: (context, index) {
            return Container(decoration: BoxDecoration(color: index % 2 == 0 ? color1 : color2, border: Border.all(width: 1, color: Colors.black)), child: cells[index]);
          },
        );
      }
      return MainContainer(Center(
          child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1162),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 64, left: 32, right: 32),
                padding: EdgeInsets.only(top: 20, left: 25.5, right: 25.5),
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                child: Container(
                    decoration: BoxDecoration(color: color2, border: Border.all(width: 2, color: Colors.white)),
                    child: Container(decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black)), child: headerCells))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 64, left: 32, right: 32),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: statisticsPage))
          ],
        ),
      )));
    });
  }

  Row getHeaderCells(TeamStatsDTO dto, List<Widget> summonerCells) => Row(children: [dto == null ? SizedBox(height: 140, width: 142) : TeamCompGeneralStatsSlot(dto)] + summonerCells);

  List<TeamCompCell> getCells(TeamStatsDTO dto) => dto.compStats.map((it) => TeamCompCell(it, dto.summoners)).toList();

  List<Widget> getSummonerCells(MatchListDto dto) => dto.summoners.map((it) => TeamCompHeaderCell(it)).toList();
}
