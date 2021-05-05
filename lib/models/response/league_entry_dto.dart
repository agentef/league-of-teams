import 'dart:math';

import 'package:league_team_analytics/models/generated/StatsController.pb.dart';
import 'package:league_team_analytics/models/response/mini_series_dto.dart';
import 'package:league_team_analytics/models/response/rank.dart';
import 'package:league_team_analytics/models/response/tier.dart';
import 'package:quiver/core.dart';

class LocalLeagueEntryDTO {
  bool freshBlood;
  bool hotStreak;
  bool inactive;
  String leagueId;
  int leaguePoints;
  int losses;
  String queueType;
  String rank;
  String summonerId;
  String summonerName;
  String tier;
  bool veteran;
  int wins;
  LocalMiniSeriesDTO miniSeries;

  LocalLeagueEntryDTO.from(LeagueEntryDTO le) {
      this.freshBlood = le.freshBlood;
      this.hotStreak = le.hotStreak;
      this.inactive = le.inactive;
      this.leagueId = le.leagueId;
      this.leaguePoints = le.leaguePoints;
      this.losses = le.losses;
      this.queueType = le.queueType;
      this.rank = le.rank;
      this.summonerId = le.summonerId;
      this.summonerName = le.summonerName;
      this.tier = le.tier;
      this.veteran = le.veteran;
      this.wins = le.wins;
      this.miniSeries = LocalMiniSeriesDTO.from(le.miniSeries);
  }

  LocalLeagueEntryDTO(
      {this.freshBlood,
        this.hotStreak,
        this.inactive,
        this.leagueId,
        this.leaguePoints,
        this.losses,
        this.queueType,
        this.rank,
        this.summonerId,
        this.summonerName,
        this.tier,
        this.veteran,
        this.wins,
        this.miniSeries});

  LocalLeagueEntryDTO.fromJson(Map<String, dynamic> json)
      : freshBlood = json['freshBlood'],
        hotStreak = json['hotStreak'],
        inactive = json['inactive'],
        leagueId = json['leagueId'],
        leaguePoints = json['leaguePoints'],
        losses = json['losses'],
        queueType = json['queueType'],
        rank = json['rank'],
        summonerId = json['summonerId'],
        summonerName = json['summonerName'],
        tier = json['tier'],
        veteran = json['veteran'],
        wins = json['wins'],
        miniSeries = json['miniSeries'] == null ? null : LocalMiniSeriesDTO.fromJson(json['miniSeries']);

  Map<String, dynamic> toJson() => {
    'freshBlood': freshBlood,
    'hotStreak': hotStreak,
    'inactive': inactive,
    'leagueId': leagueId,
    'leaguePoints': leaguePoints,
    'losses': losses,
    'queueType': queueType,
    'rank': rank,
    'summonerId': summonerId,
    'summonerName': summonerName,
    'tier': tier,
    'veteran': veteran,
    'wins': wins,
    'miniSeries': miniSeries
  };


  @override
  bool operator ==(Object other) => compareLeagueEntries(other) == 0;
  bool operator > (Object other) => compareLeagueEntries(other) == 1;
  bool operator < (Object other) => compareLeagueEntries(other) == -1;

  @override
  int get hashCode => hash2(summonerId, queueType);

  int compareLeagueEntries(LocalLeagueEntryDTO e) {
    if (this.tier == e.tier) return compareTiers(e);
    if (   e.tier == Tier.IRON.toSimpleString()) return 1;
    if (this.tier == Tier.IRON.toSimpleString()) return -1;
    if (   e.tier == Tier.BRONZE.toSimpleString()) return 1;
    if (this.tier == Tier.BRONZE.toSimpleString()) return -1;
    if (   e.tier == Tier.SILVER.toSimpleString()) return 1;
    if (this.tier == Tier.SILVER.toSimpleString()) return -1;
    if (   e.tier == Tier.GOLD.toSimpleString()) return 1;
    if (this.tier == Tier.GOLD.toSimpleString()) return -1;
    if (   e.tier == Tier.PLATINUM.toSimpleString()) return 1;
    if (this.tier == Tier.PLATINUM.toSimpleString()) return -1;
    if (   e.tier == Tier.DIAMOND.toSimpleString()) return 1;
    if (this.tier == Tier.DIAMOND.toSimpleString()) return -1;
    if (   e.tier == Tier.MASTER.toSimpleString()) return 1;
    if (this.tier == Tier.MASTER.toSimpleString()) return -1;
    if (   e.tier == Tier.GRANDMASTER.toSimpleString()) return 1;
    if (this.tier == Tier.GRANDMASTER.toSimpleString()) return -1;
    if (   e.tier == Tier.CHALLENGER.toSimpleString()) return 1;
    return -1;
  }

  int compareTiers(LocalLeagueEntryDTO e) {
    if (this.rank == e.rank) return max(this.leaguePoints, e.leaguePoints);
    if (   e.rank == Rank.IV.toSimpleString()) return 1;
    if (this.rank == Rank.IV.toSimpleString()) return -1;
    if (   e.rank == Rank.III.toSimpleString()) return 1;
    if (this.rank == Rank.III.toSimpleString()) return -1;
    if (   e.rank == Rank.II.toSimpleString()) return 1;
    if (this.rank == Rank.II.toSimpleString()) return -1;
    if (   e.rank == Rank.I.toSimpleString()) return 1;
    return -1;
  }
}