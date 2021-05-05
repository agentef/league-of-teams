import 'package:league_team_analytics/models/generated/StatsController.pb.dart';
import 'package:league_team_analytics/models/response/detailed_summoner.dart';

class MatchListDTO {
  List<LocalDetailedSummoner> summoners;
  List<int> matchIds;
  int totalGames;
  String version;

  MatchListDTO({this.summoners, this.matchIds, this.totalGames});

  MatchListDTO.from(MatchListResponse mlr) {
    this.summoners = mlr.summoners.map((e) => LocalDetailedSummoner.from(e));
    this.matchIds = mlr.matchIds;
    this.totalGames = mlr.totalGames;
    this.version = mlr.dataDragonVersion;
  }

  MatchListDTO.fromJson(Map<String, dynamic> json)
      : summoners = List.from(json['summoners']).map((e) => LocalDetailedSummoner.fromJson(e)).toList(),
        matchIds = List<int>.from(json['matchIds']),
        totalGames = json['totalGames'],
        version = json['dataDragonVersion'];

  Map<String, dynamic> toJson() => {'summoners': summoners, 'matchIds': matchIds, 'totalGames': totalGames};
}