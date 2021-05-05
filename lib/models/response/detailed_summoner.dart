
import 'package:league_team_analytics/models/generated/StatsController.pb.dart';
import 'package:league_team_analytics/models/response/league_entry_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

class LocalDetailedSummoner {
  LocalSummonerDTO summoner;
  List<LocalLeagueEntryDTO> summonerLeagues;

  LocalDetailedSummoner.from(DetailedSummoner ds) {
    this.summoner = LocalSummonerDTO.from(ds.summoner);
    this.summonerLeagues = ds.summonerLeagues.map((e) => LocalLeagueEntryDTO.from(e)).toList();
  }

  Map<String, dynamic> toJson() => {
    'summoner': summoner,
    'summonerLeagues': summonerLeagues
  };

  LocalDetailedSummoner.fromJson(Map<String, dynamic> json):
        summoner = LocalSummonerDTO.fromJson(json['summoner']),
        summonerLeagues = List.from(json['summonerLeagues']).map((e) => LocalLeagueEntryDTO.fromJson(e)).toList();
}