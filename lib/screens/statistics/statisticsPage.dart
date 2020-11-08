import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_cell.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_general_stats_slot.dart';
import 'package:league_team_analytics/screens/statistics/widgets/teamcomp_header_cell.dart';
import 'file:///E:/Dev/League%20Team%20Analytics/league_team_analytics/lib/bloc_services/objects/comps_params.dart';
import 'package:league_team_analytics/widgets/commons/error_screen.dart';
import 'package:league_team_analytics/widgets/commons/loading_screen.dart';
import 'package:league_team_analytics/widgets/commons/main_container.dart';

import 'file:///E:/Dev/League%20Team%20Analytics/league_team_analytics/lib/bloc_services/statistics_service.dart';
import 'file:///E:/Dev/League%20Team%20Analytics/league_team_analytics/lib/bloc_services/storage_service.dart';

class StatisticsPage extends StatelessWidget {

  final _statisticsService = StatisticsService();
  final _storageService = StorageService();

  Future<TeamStatsDTO> getStatsDto() async => await _statisticsService.getCompsBySummonerNames(_storageService.findSummoners(), CompsParams("BR1", "BRAZIL", null, null, null, 500, 0));


  List<TeamCompCell> getCells(TeamStatsDTO dto) {
    final list = List<TeamCompCell>();

    dto.compStats.forEach((it) => list.add(TeamCompCell(it, dto.summoners)));
    return list;
  }

  Row getHeaderCells(TeamStatsDTO dto) {
    final headerCells = List<Widget>();
    headerCells.add(TeamCompGeneralStatsSlot(dto));
    dto.summoners.forEach((it) {
      headerCells.add(TeamCompHeaderCell(it));
    });
    return Row(children: headerCells);
  }

  StatisticsPage();

  @override
  Widget build(BuildContext context) {
    final color1 = Colors.blueGrey.withOpacity(0.60);
    final color2 = Colors.grey.withOpacity(0.60);

    return MainContainer(
        Center(
        child: FutureBuilder(
          future: getStatsDto(),
          builder: (context, snapshot) {
            while (snapshot.connectionState != ConnectionState.done) return LoadingScreen();

            final teamStatsDTO = snapshot.data;

            final cells = getCells(teamStatsDTO);
            final headerCells = getHeaderCells(teamStatsDTO);
            final statisticsPage = ListView.builder(
              cacheExtent: 30,
              itemCount: cells.length,
              itemBuilder: (context, index) {
                Color color;
                if (index % 2 == 0) color = color1; else color = color2;
                return Container(decoration: BoxDecoration(color: color, border: Border.all(width: 1,color: Colors.black)), child: cells[index]);
              },
              padding: EdgeInsets.all(24),
            );
            if (snapshot.hasError) return ErrorScreen();
            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1162),
              child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 64, left: 32, right: 32),
                        padding: EdgeInsets.only(top: 20, left: 25.5, right: 25.5),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
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
          }
        )
        )
    );
  }

}

