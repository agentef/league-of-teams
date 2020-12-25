import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/widgets/loading_screen.dart';
import 'package:league_team_analytics/app/commons/widgets/main_container.dart';
import 'package:league_team_analytics/app/commons/widgets/summoner_not_found.dart';
import 'package:league_team_analytics/app/screens/statistics/widgets/loading_bar.dart';
import 'package:league_team_analytics/app/screens/statistics/widgets/statistics_page_no_matches.dart';
import 'package:league_team_analytics/app/screens/statistics/widgets/teamcomp_header_cell.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/service/objects/comps_params.dart';

import 'controller/statistics_controller.dart';
import 'widgets/teamcomp_cell.dart';
import 'widgets/teamcomp_header_cell_slot.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  final _statisticsController = StatisticsController();

  @override
  Widget build(BuildContext context) {
    final params = CompsParams(Get.parameters['region'], "BRAZIL", int.parse(Get.parameters['days']), null, null, null);
    return Obx(() {
      Widget statisticsView;

      final matchListDTO = _statisticsController.matchListDTO.value;
      final hasError = _statisticsController.error.value;
      final teamStatsDTO = _statisticsController.teamStatsDTO.value;
      final progress = _statisticsController.progress.value;

      if (progress == 1) Future.delayed(Duration(seconds: 2)).then((_) => _statisticsController.isVisible(false));

      if (hasError) return MainContainer(SummonerNotFound());

      if (matchListDTO == null) {
        _statisticsController.searchMatchList(Get.parameters['summoners'], params);
        return MainContainer(LoadingScreen());
      }

      if (matchListDTO.matchIds.isEmpty) {
        statisticsView = StatisticsPageNoMatches();
      } else {
        if (teamStatsDTO == null) {
          _statisticsController.searchMatches(matchListDTO, params);
          statisticsView = LoadingScreen();
        } else {
          if (matchListDTO.totalGames > teamStatsDTO.totalGames) {
            Future.delayed(Duration(seconds: 2)).then((value) => _statisticsController.searchMatches(matchListDTO, params));
          }
          final cells = getCells(teamStatsDTO, matchListDTO.version);

          final scrollController = ScrollController();
          statisticsView = Scrollbar(
              isAlwaysShown: true,
              controller: scrollController,
              child: ListView.builder(controller: scrollController, itemCount: cells.length, itemBuilder: (_, index) => cells[index]));
        }
      }
      return MainContainer(Center(
          child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 226.0 + 204.0 * matchListDTO.summoners.length),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          TeamCompHeaderCell(teamStatsDTO, getSummonerCells(matchListDTO)),
                          StatisticsPageLoadingBar(progress, teamStatsDTO, matchListDTO, _statisticsController.isVisible.value)
                        ],
                      )),
                  Expanded(child: Container(margin: EdgeInsets.symmetric(horizontal: 32), child: statisticsView))
                ],
              ))));
    });
  }

  List<TeamCompHeaderCellSlot> getSummonerCells(MatchListDTO dto) => dto.summoners.map((it) => TeamCompHeaderCellSlot(it, dto.version)).toList();

  List<TeamCompCell> getCells(TeamStatsDTO dto, String version) => dto.compStats.map((it) => TeamCompCell(it, dto.summoners, version)).toList();
}
