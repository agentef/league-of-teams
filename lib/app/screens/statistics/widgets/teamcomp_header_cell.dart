import 'package:flutter/material.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompHeaderCell extends StatelessWidget {

  final SummonerDTO _summonerDTO;


  TeamCompHeaderCell(this._summonerDTO);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 180,
      child: Row(crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: Image.network(
              'http://ddragon.leagueoflegends.com/cdn/10.22.1/img/profileicon/${_summonerDTO.profileIconId}.png',
              height: 48,
              width: 48,
            ),
          ),
          SizedBox(width: 4),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              _summonerDTO.name,
              style: StatisticsPageTextStyles.summonerNameTextStyle,
            ),
          )
        ],
      ),

    );
  }
}
