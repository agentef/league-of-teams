import 'package:flutter/material.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompSlot extends StatelessWidget {
  final SummonerStats _summonerInfo;
  final String _version;


  TeamCompSlot(this._summonerInfo, this._version);

  @override
  Widget build(BuildContext context) {
    if (_summonerInfo == null) return Container();
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border(left: BorderSide(width: 0.5, color: Colors.white))),
      width: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'http://ddragon.leagueoflegends.com/cdn/$_version/img/champion/${_summonerInfo.championName}.png',
                height: 48,
                width: 48,
              ),
              SelectableText(_summonerInfo.championName, style: StatisticsPageTextStyles.championNameTextStyle)
            ],
          ),
          Container(
            width: 64,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText("K", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    SelectableText("${_summonerInfo.kills.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText("D", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    SelectableText("${_summonerInfo.deaths.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText("A", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    SelectableText("${_summonerInfo.assists.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText("cs", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    SelectableText("${_summonerInfo.cs.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
