import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompHeaderCellSlot extends StatelessWidget {
  final DetailedSummoner _detailedSummoner;
  final String _version;

  TeamCompHeaderCellSlot(this._detailedSummoner, this._version);

  @override
  Widget build(BuildContext context) {
    final highestElo = _detailedSummoner.summonerLeagues.reduce((curr, next) => curr > next? curr: next);

    return Container(
      margin: EdgeInsets.only(right: 8, top: 1, bottom: 1),
      decoration: ShapeDecoration(
        // color: CustomColors.paleTaupe,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.appColorScheme.primary, width: 0.5),
          borderRadius: BorderRadius.circular(2)
        ),
      ),
      // color: CustomColors.paleTaupe,
      height: 120,
      width: 172,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.network(
              'http://ddragon.leagueoflegends.com/cdn/$_version/img/profileicon/${_detailedSummoner.summoner.profileIconId}.png',
              height: 48,
              width: 48,
            ),
          ),
          Container(
            child: Text(
              _detailedSummoner.summoner.name,
              style: StatisticsPageTextStyles.summonerNameTextStyle,
            ),
          ),
          Tooltip(

            message: '${highestElo.tier} ${highestElo.rank}',
            child: Container(
              padding: EdgeInsets.only(top: 4),
              child: Image.asset('assets/emblems/${highestElo.tier}.png',
                  height: 40,
                  width: 40,
                semanticLabel: '${highestElo.tier} ${highestElo.rank}',
              ),
            ),
          )
        ],
      ),
    );
  }
}
