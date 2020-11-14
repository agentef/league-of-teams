import 'package:league_team_analytics/models/response/team_stats_dto.dart';

class MatchListDto {
  List<SummonerDTO> summoners;
  List<int> matchIds;
  int totalGames;

  MatchListDto(this.summoners, this.matchIds, this.totalGames);

  MatchListDto.fromJson(Map<String, dynamic> json)
      : summoners = List.from(json['summoners']).map((e) => SummonerDTO.fromJson(e)).toList(),
        matchIds = List<int>.from(json['matchIds']),
        totalGames = json['totalGames'];

  Map<String, dynamic> toJson() => {'summoners': summoners, 'matchIds': matchIds, 'totalGames': totalGames};
}
