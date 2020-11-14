import 'package:flutter/material.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompSlot extends StatelessWidget {
  final SummonerStats _summonerInfo;



  TeamCompSlot(this._summonerInfo);

  @override
  Widget build(BuildContext context) {
    if (_summonerInfo == null) return SizedBox(width: 180);
    return Container(
      decoration: BoxDecoration(border: Border(right: BorderSide(width: 0.5, color: Colors.black87),left: BorderSide(width: 0.5, color: Colors.black87)), ),
      width: 180,
      child: Column(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Image.network(
                  'http://ddragon.leagueoflegends.com/cdn/10.22.1/img/champion/${_summonerInfo.championName}.png',
                  height: 48,
                  width: 48,
                ),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  _summonerInfo.championName,
                  style: StatisticsPageTextStyles.championNameTextStyle,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("K", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    Text("${_summonerInfo.kills.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("D", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    Text("${_summonerInfo.deaths.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("A", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    Text("${_summonerInfo.assists.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("cs", style: StatisticsPageTextStyles.kdaHeaderTextStyle,),
                    Text("${_summonerInfo.cs.toStringAsFixed(1)}", style: StatisticsPageTextStyles.kdaValueTextStyle,),
                  ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
