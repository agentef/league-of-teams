import 'package:league_team_analytics/models/generated/StatsController.pb.dart';

class LocalTeamStatsDTO {
  LocalTeamStatsDTO(
      this.compStats, this.firstGameDate, this.lastGameDate, this.summoners, this.totalGames, this.totalWinRate, this.totalWins, this.totalLoses);

  DateTime firstGameDate;
  DateTime lastGameDate;
  List<LocalCompStats> compStats;
  List<LocalSummonerDTO> summoners;
  int totalGames;
  int currentGames;
  double totalWinRate;
  int totalWins;
  int totalLoses;

  LocalTeamStatsDTO.fromJson(Map json)
      : summoners = List.from(json['summoners']).map((e) => LocalSummonerDTO.fromJson(e)).toList(),
        compStats = List.from(json['compStats']).map((e) => LocalCompStats.fromJson(e)).toList(),
        firstGameDate = DateTime.utc(json['firstGameDate'][0], json['firstGameDate'][1], json['firstGameDate'][2], json['firstGameDate'][3], json['firstGameDate'][4], json['firstGameDate'][5] ),
        lastGameDate = DateTime.utc(json['lastGameDate'][0], json['lastGameDate'][1], json['lastGameDate'][2], json['lastGameDate'][3], json['lastGameDate'][4], json['lastGameDate'][5] ),
        totalGames = json['totalGames'],
        currentGames = json['currentGames'],
        totalWinRate = json['totalWinRate'],
        totalWins = json['totalWins'],
        totalLoses = json['totalLoses'];
}

class LocalSummonerDTO {
  String accountId;
  int profileIconId;
  int revisionDate;
  String name;
  String id;
  String puuid;
  int summonerLevel;

  LocalSummonerDTO(this.accountId, this.profileIconId, this.revisionDate, this.name, this.id, this.puuid, this.summonerLevel);

  LocalSummonerDTO.from(SummonerDTO s) {
    this.accountId = s.accountId;
    this.profileIconId = s.profileIconId;
    this.revisionDate = s.revisionDate;
    this.name = s.name;
    this.id = s.id;
    this.puuid = s.puuid;
    this.summonerLevel = s.summonerLevel;
  }

  Map<String, dynamic> toJson() => {'accountId': accountId, 'profileIconId': profileIconId, 'revisionDate': revisionDate, 'name': name, 'id': id, 'puuid': puuid, 'summonerLevel': summonerLevel};

  LocalSummonerDTO.fromJson(Map<String, dynamic> json)
      : accountId = json['accountId'],
        profileIconId = json['profileIconId'],
        revisionDate = json['revisionDate'],
        name = json['name'],
        id = json['id'],
        puuid = json['puuid'],
        summonerLevel = json['summonerLevel'];
}

class LocalCompStats {
  int totalGames;
  double winRate;
  int wins;
  int loses;
  SummonerStats summoner1Info;
  SummonerStats summoner2Info;
  SummonerStats summoner3Info;
  SummonerStats summoner4Info;
  SummonerStats summoner5Info;

  LocalCompStats(this.totalGames, this.winRate, this.wins, this.loses, this.summoner1Info, this.summoner2Info, this.summoner3Info, this.summoner4Info,
      this.summoner5Info);

  LocalCompStats.fromJson(Map<String, dynamic> json)
      : totalGames = json['totalGames'],
        winRate = json['winRate'],
        wins = json['wins'],
        loses = json['loses'],
        summoner1Info = SummonerStats.fromJson(json['summoner1Info']),
        summoner2Info = SummonerStats.fromJson(json['summoner2Info']),
        summoner3Info = json['summoner3Info'] == null ? null : SummonerStats.fromJson(json['summoner3Info']),
        summoner4Info = json['summoner4Info'] == null ? null : SummonerStats.fromJson(json['summoner4Info']),
        summoner5Info = json['summoner5Info'] == null ? null : SummonerStats.fromJson(json['summoner5Info']);
}

class SummonerStats {
  String summonerName;
  String championName;
  double kills;
  double deaths;
  double assists;
  double cs;

  SummonerStats(this.summonerName, this.championName, this.kills, this.deaths, this.assists, this.cs);

  SummonerStats.from(CompSummonerInfo info) {
    this.summonerName = info.summonerName;
    this.championName = info.championName;
    this.kills = info.kills;
    this.deaths = info.deaths;
    this.assists = info.assists;
    this.cs = info.cs;
  }

  SummonerStats.fromJson(Map<String, dynamic> json)
      : summonerName = json['summonerName'],
        championName = json['championName'],
        kills = json['kills'],
        deaths = json['deaths'],
        assists = json['assists'],
        cs = json['cs'];
}
