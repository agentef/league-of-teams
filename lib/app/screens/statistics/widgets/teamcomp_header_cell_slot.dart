import 'package:flutter/material.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';

import 'statistics_page_text_styles.dart';

class TeamCompHeaderCellSlot extends StatelessWidget {
  final DetailedSummoner _detailedSummoner;
  final String _version;

  TeamCompHeaderCellSlot(this._detailedSummoner, this._version);

  _getEloWidget() {
    final highestElo = _detailedSummoner.summonerLeagues.isNotEmpty ? _detailedSummoner.summonerLeagues.reduce((c, n) => c > n ? c : n) : null;
    if (highestElo == null) {
      return SizedBox(height: 44);
    } else {
      return Tooltip(
        message: '${highestElo.tier} ${highestElo.rank}',
        child: Container(
          padding: EdgeInsets.only(top: 4),
          child: Image.asset(
            'assets/emblems/${highestElo.tier}.png',
            height: 40,
            width: 40,
            semanticLabel: '${highestElo.tier} ${highestElo.rank}',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(right: 8, top: 1, bottom: 1),
      height: 120,
      width: 172,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.appColorScheme.primary, width: 0.5),
          borderRadius: BorderRadius.circular(2)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network('http://ddragon.leagueoflegends.com/cdn/$_version/img/profileicon/${_detailedSummoner.summoner.profileIconId}.png', height: 48, width: 48),
          Text(_detailedSummoner.summoner.name, style: StatisticsPageTextStyles.summonerNameTextStyle),
          _getEloWidget()
        ],
      ),
    );
  }
}
