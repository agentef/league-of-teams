import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:league_team_analytics/bloc/statistics_bloc.dart';
import 'package:league_team_analytics/bloc_services/objects/comps_params.dart';
import 'package:league_team_analytics/bloc_services/statistics_service.dart';
import 'package:league_team_analytics/bloc_services/storage_service.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_cell.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_general_stats_slot.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_header_cell.dart';
import 'package:league_team_analytics/widgets/commons/error_screen.dart';
import 'package:league_team_analytics/widgets/commons/loading_screen.dart';
import 'package:league_team_analytics/widgets/commons/main_container.dart';



class StatisticsPage extends StatelessWidget {
  final _statisticsService = StatisticsService();
  final _storageService = StorageService();
  final bloc = BlocProvider.getBloc<StatisticsBloc>();

  Future<TeamStatsDTO> getStatsDto() async =>
      await _statisticsService.getCompsBySummonerNames(_storageService.findSummoners(), CompsParams("BR1", "BRAZIL", null, null, null, 500, 0));

  List<TeamCompCell> getCells(TeamStatsDTO dto) => dto.compStats.map((it) => TeamCompCell(it, dto.summoners)).toList();

  Row getHeaderCells(TeamStatsDTO dto, List<Widget> summonerCells) {
    final list = List<Widget>();
    list.add(dto == null ? SizedBox(height: 140, width: 142) : TeamCompGeneralStatsSlot(dto));
    list.addAll(summonerCells);
    return Row(children: list);
  }

  List<Widget> getSummonerCells(MatchListDto dto) => dto.summoners.map((it) => TeamCompHeaderCell(it)).toList();

  @override
  Widget build(BuildContext context) {
    final color1 = Colors.blueGrey.withOpacity(0.60);
    final color2 = Colors.grey.withOpacity(0.60);

    return MainContainer(Center(
        child: StreamBuilder(
            stream: bloc.matchList,
            initialData: null,
            builder: (context, matchListSnapshot) {
              if (matchListSnapshot.hasError) return ErrorScreen();
              if (matchListSnapshot.data == null) {
                final map = Map<String, dynamic>();
                map["summoners"] = _storageService.findSummoners();
                map["params"] = CompsParams("BR1", "BRAZIL", null, null, null, 500, 0);
                bloc.getMatchList.add(map);
                return LoadingScreen();
              }

              final MatchListDto matchListDto = matchListSnapshot.data;

              return StreamBuilder(
                initialData: null,
                stream: bloc.stats,
                builder: (context, statsSnapshot) {
                  final TeamStatsDTO teamStatsDTO = statsSnapshot.data;
                  final summonerCells = getSummonerCells(matchListDto);

                  final headerCells = getHeaderCells(teamStatsDTO, summonerCells);
                  Widget statisticsPage;
                  if (statsSnapshot.data == null) {
                    final map = Map<String, dynamic>();
                    map["matchList"] = matchListDto;
                    map["params"] = CompsParams("BR1", "BRAZIL", null, null, null, 500, 0);
                    bloc.findMatchesByMatchList.add(map);
                    statisticsPage = LoadingScreen();
                  } else {
                    if (matchListDto.totalGames > teamStatsDTO.totalGames) {
                      Future.delayed(Duration(seconds: 2)).then((value) {
                        final map = Map<String, dynamic>();
                        map["matchList"] = matchListDto;
                        map["params"] = CompsParams("BR1", "BRAZIL", null, null, null, 500, 0);
                        bloc.findMatchesByMatchList.add(map);
                      });
                    }
                  final cells = getCells(teamStatsDTO);
                    statisticsPage = ListView.builder(
                      itemCount: cells.length,
                      itemBuilder: (context, index) {
                        final color = index % 2 == 0 ? color1 : color2;
                        return Container(
                            decoration: BoxDecoration(color: color, border: Border.all(width: 1, color: Colors.black)), child: cells[index]);
                      },
                      padding: EdgeInsets.all(24),
                    );
                  }

                  return ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 1162),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 64, left: 32, right: 32),
                            padding: EdgeInsets.only(top: 20, left: 25.5, right: 25.5),
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
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
                  );
                },
              );
            })));
  }
}
