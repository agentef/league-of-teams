import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_header.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

class StatisticsPageLoadingBar extends StatelessWidget {
  final double progress;
  final LocalTeamStatsDTO teamStatsDTO;
  final MatchListDTO matchListDTO;
  final bool visible;

  StatisticsPageLoadingBar(this.progress, this.teamStatsDTO, this.matchListDTO, this.visible);

  @override
  Widget build(BuildContext context) {
    if (visible) return AnimatedOpacity(
      opacity: progress == 1 ? 0 : 1,
      duration: Duration(milliseconds: 2000),
      child: Card(
          color: CustomColors.appColorScheme.surface,
          child: Column(
            children: [
              SelectableText(MessagesEnum.please_wait.get.tr, style: TextStyles.DefaultTextStyle),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LinearProgressIndicator(value: progress, valueColor: AlwaysStoppedAnimation(CustomColors.appColorScheme.secondaryVariant)),
              ),
              SelectableText(
                  "${(progress * 100).toPrecision(1)}% ${teamStatsDTO == null ? "" : "${teamStatsDTO.totalGames}/${matchListDTO.matchIds.length}"}",
                  style: TextStyles.DefaultTextStyle)
            ],
          )),
    );
    return Container();
  }
}
