///
//  Generated code. Do not modify.
//  source: StatsController.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

class MatchListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MatchListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matchIds', $pb.PbFieldType.P3, protoName: 'matchIds')
    ..pc<DetailedSummoner>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoners', $pb.PbFieldType.PM, subBuilder: DetailedSummoner.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalGames', $pb.PbFieldType.O3, protoName: 'totalGames')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataDragonVersion', protoName: 'dataDragonVersion')
    ..hasRequiredFields = false
  ;

  MatchListResponse._() : super();
  factory MatchListResponse({
    $core.Iterable<$core.int>? matchIds,
    $core.Iterable<DetailedSummoner>? summoners,
    $core.int? totalGames,
    $core.String? dataDragonVersion,
  }) {
    final _result = create();
    if (matchIds != null) {
      _result.matchIds.addAll(matchIds);
    }
    if (summoners != null) {
      _result.summoners.addAll(summoners);
    }
    if (totalGames != null) {
      _result.totalGames = totalGames;
    }
    if (dataDragonVersion != null) {
      _result.dataDragonVersion = dataDragonVersion;
    }
    return _result;
  }
  factory MatchListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchListResponse clone() => MatchListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchListResponse copyWith(void Function(MatchListResponse) updates) => super.copyWith((message) => updates(message as MatchListResponse)) as MatchListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchListResponse create() => MatchListResponse._();
  MatchListResponse createEmptyInstance() => create();
  static $pb.PbList<MatchListResponse> createRepeated() => $pb.PbList<MatchListResponse>();
  @$core.pragma('dart2js:noInline')
  static MatchListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchListResponse>(create);
  static MatchListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get matchIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<DetailedSummoner> get summoners => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get totalGames => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalGames($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalGames() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalGames() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get dataDragonVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set dataDragonVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDataDragonVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearDataDragonVersion() => clearField(4);
}

class CompStatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompStatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..pc<SummonerDTO>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoners', $pb.PbFieldType.PM, subBuilder: SummonerDTO.create)
    ..pc<CompStats>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compStats', $pb.PbFieldType.PM, protoName: 'compStats', subBuilder: CompStats.create)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstGameDate', protoName: 'firstGameDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastGameDate', protoName: 'lastGameDate', subBuilder: $1.Timestamp.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalGames', $pb.PbFieldType.O3, protoName: 'totalGames')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalWinRate', $pb.PbFieldType.OD, protoName: 'totalWinRate')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalWins', $pb.PbFieldType.O3, protoName: 'totalWins')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalLoses', $pb.PbFieldType.O3, protoName: 'totalLoses')
    ..hasRequiredFields = false
  ;

  CompStatsResponse._() : super();
  factory CompStatsResponse({
    $core.Iterable<SummonerDTO>? summoners,
    $core.Iterable<CompStats>? compStats,
    $1.Timestamp? firstGameDate,
    $1.Timestamp? lastGameDate,
    $core.int? totalGames,
    $core.double? totalWinRate,
    $core.int? totalWins,
    $core.int? totalLoses,
  }) {
    final _result = create();
    if (summoners != null) {
      _result.summoners.addAll(summoners);
    }
    if (compStats != null) {
      _result.compStats.addAll(compStats);
    }
    if (firstGameDate != null) {
      _result.firstGameDate = firstGameDate;
    }
    if (lastGameDate != null) {
      _result.lastGameDate = lastGameDate;
    }
    if (totalGames != null) {
      _result.totalGames = totalGames;
    }
    if (totalWinRate != null) {
      _result.totalWinRate = totalWinRate;
    }
    if (totalWins != null) {
      _result.totalWins = totalWins;
    }
    if (totalLoses != null) {
      _result.totalLoses = totalLoses;
    }
    return _result;
  }
  factory CompStatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompStatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompStatsResponse clone() => CompStatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompStatsResponse copyWith(void Function(CompStatsResponse) updates) => super.copyWith((message) => updates(message as CompStatsResponse)) as CompStatsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompStatsResponse create() => CompStatsResponse._();
  CompStatsResponse createEmptyInstance() => create();
  static $pb.PbList<CompStatsResponse> createRepeated() => $pb.PbList<CompStatsResponse>();
  @$core.pragma('dart2js:noInline')
  static CompStatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompStatsResponse>(create);
  static CompStatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SummonerDTO> get summoners => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<CompStats> get compStats => $_getList(1);

  @$pb.TagNumber(3)
  $1.Timestamp get firstGameDate => $_getN(2);
  @$pb.TagNumber(3)
  set firstGameDate($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirstGameDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstGameDate() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureFirstGameDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get lastGameDate => $_getN(3);
  @$pb.TagNumber(4)
  set lastGameDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastGameDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastGameDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureLastGameDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get totalGames => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalGames($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalGames() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalGames() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get totalWinRate => $_getN(5);
  @$pb.TagNumber(6)
  set totalWinRate($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalWinRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalWinRate() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalWins => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalWins($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalWins() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalWins() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get totalLoses => $_getIZ(7);
  @$pb.TagNumber(8)
  set totalLoses($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalLoses() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalLoses() => clearField(8);
}

class CompStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalGames', $pb.PbFieldType.O3, protoName: 'totalGames')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'winRate', $pb.PbFieldType.OD, protoName: 'winRate')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wins', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loses', $pb.PbFieldType.O3)
    ..aOM<CompSummonerInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoner1Info', protoName: 'summoner1Info', subBuilder: CompSummonerInfo.create)
    ..aOM<CompSummonerInfo>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoner2Info', protoName: 'summoner2Info', subBuilder: CompSummonerInfo.create)
    ..aOM<CompSummonerInfo>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoner3Info', protoName: 'summoner3Info', subBuilder: CompSummonerInfo.create)
    ..aOM<CompSummonerInfo>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoner4Info', protoName: 'summoner4Info', subBuilder: CompSummonerInfo.create)
    ..aOM<CompSummonerInfo>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoner5Info', protoName: 'summoner5Info', subBuilder: CompSummonerInfo.create)
    ..hasRequiredFields = false
  ;

  CompStats._() : super();
  factory CompStats({
    $core.int? totalGames,
    $core.double? winRate,
    $core.int? wins,
    $core.int? loses,
    CompSummonerInfo? summoner1Info,
    CompSummonerInfo? summoner2Info,
    CompSummonerInfo? summoner3Info,
    CompSummonerInfo? summoner4Info,
    CompSummonerInfo? summoner5Info,
  }) {
    final _result = create();
    if (totalGames != null) {
      _result.totalGames = totalGames;
    }
    if (winRate != null) {
      _result.winRate = winRate;
    }
    if (wins != null) {
      _result.wins = wins;
    }
    if (loses != null) {
      _result.loses = loses;
    }
    if (summoner1Info != null) {
      _result.summoner1Info = summoner1Info;
    }
    if (summoner2Info != null) {
      _result.summoner2Info = summoner2Info;
    }
    if (summoner3Info != null) {
      _result.summoner3Info = summoner3Info;
    }
    if (summoner4Info != null) {
      _result.summoner4Info = summoner4Info;
    }
    if (summoner5Info != null) {
      _result.summoner5Info = summoner5Info;
    }
    return _result;
  }
  factory CompStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompStats clone() => CompStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompStats copyWith(void Function(CompStats) updates) => super.copyWith((message) => updates(message as CompStats)) as CompStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompStats create() => CompStats._();
  CompStats createEmptyInstance() => create();
  static $pb.PbList<CompStats> createRepeated() => $pb.PbList<CompStats>();
  @$core.pragma('dart2js:noInline')
  static CompStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompStats>(create);
  static CompStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalGames => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalGames($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalGames() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalGames() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get winRate => $_getN(1);
  @$pb.TagNumber(2)
  set winRate($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWinRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearWinRate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get wins => $_getIZ(2);
  @$pb.TagNumber(3)
  set wins($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWins() => $_has(2);
  @$pb.TagNumber(3)
  void clearWins() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get loses => $_getIZ(3);
  @$pb.TagNumber(4)
  set loses($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLoses() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoses() => clearField(4);

  @$pb.TagNumber(5)
  CompSummonerInfo get summoner1Info => $_getN(4);
  @$pb.TagNumber(5)
  set summoner1Info(CompSummonerInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSummoner1Info() => $_has(4);
  @$pb.TagNumber(5)
  void clearSummoner1Info() => clearField(5);
  @$pb.TagNumber(5)
  CompSummonerInfo ensureSummoner1Info() => $_ensure(4);

  @$pb.TagNumber(6)
  CompSummonerInfo get summoner2Info => $_getN(5);
  @$pb.TagNumber(6)
  set summoner2Info(CompSummonerInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSummoner2Info() => $_has(5);
  @$pb.TagNumber(6)
  void clearSummoner2Info() => clearField(6);
  @$pb.TagNumber(6)
  CompSummonerInfo ensureSummoner2Info() => $_ensure(5);

  @$pb.TagNumber(7)
  CompSummonerInfo get summoner3Info => $_getN(6);
  @$pb.TagNumber(7)
  set summoner3Info(CompSummonerInfo v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSummoner3Info() => $_has(6);
  @$pb.TagNumber(7)
  void clearSummoner3Info() => clearField(7);
  @$pb.TagNumber(7)
  CompSummonerInfo ensureSummoner3Info() => $_ensure(6);

  @$pb.TagNumber(8)
  CompSummonerInfo get summoner4Info => $_getN(7);
  @$pb.TagNumber(8)
  set summoner4Info(CompSummonerInfo v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSummoner4Info() => $_has(7);
  @$pb.TagNumber(8)
  void clearSummoner4Info() => clearField(8);
  @$pb.TagNumber(8)
  CompSummonerInfo ensureSummoner4Info() => $_ensure(7);

  @$pb.TagNumber(9)
  CompSummonerInfo get summoner5Info => $_getN(8);
  @$pb.TagNumber(9)
  set summoner5Info(CompSummonerInfo v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSummoner5Info() => $_has(8);
  @$pb.TagNumber(9)
  void clearSummoner5Info() => clearField(9);
  @$pb.TagNumber(9)
  CompSummonerInfo ensureSummoner5Info() => $_ensure(8);
}

class CompSummonerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompSummonerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summonerName', protoName: 'summonerName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'championName', protoName: 'championName')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kills', $pb.PbFieldType.OD)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deaths', $pb.PbFieldType.OD)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assists', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cs', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  CompSummonerInfo._() : super();
  factory CompSummonerInfo({
    $core.String? summonerName,
    $core.String? championName,
    $core.double? kills,
    $core.double? deaths,
    $core.double? assists,
    $core.double? cs,
  }) {
    final _result = create();
    if (summonerName != null) {
      _result.summonerName = summonerName;
    }
    if (championName != null) {
      _result.championName = championName;
    }
    if (kills != null) {
      _result.kills = kills;
    }
    if (deaths != null) {
      _result.deaths = deaths;
    }
    if (assists != null) {
      _result.assists = assists;
    }
    if (cs != null) {
      _result.cs = cs;
    }
    return _result;
  }
  factory CompSummonerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompSummonerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompSummonerInfo clone() => CompSummonerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompSummonerInfo copyWith(void Function(CompSummonerInfo) updates) => super.copyWith((message) => updates(message as CompSummonerInfo)) as CompSummonerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompSummonerInfo create() => CompSummonerInfo._();
  CompSummonerInfo createEmptyInstance() => create();
  static $pb.PbList<CompSummonerInfo> createRepeated() => $pb.PbList<CompSummonerInfo>();
  @$core.pragma('dart2js:noInline')
  static CompSummonerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompSummonerInfo>(create);
  static CompSummonerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get summonerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set summonerName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSummonerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummonerName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get championName => $_getSZ(1);
  @$pb.TagNumber(2)
  set championName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChampionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearChampionName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get kills => $_getN(2);
  @$pb.TagNumber(3)
  set kills($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKills() => $_has(2);
  @$pb.TagNumber(3)
  void clearKills() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get deaths => $_getN(3);
  @$pb.TagNumber(4)
  set deaths($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeaths() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeaths() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get assists => $_getN(4);
  @$pb.TagNumber(5)
  set assists($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssists() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssists() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get cs => $_getN(5);
  @$pb.TagNumber(6)
  set cs($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCs() => $_has(5);
  @$pb.TagNumber(6)
  void clearCs() => clearField(6);
}

class GetMatchlistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMatchlistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoners')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queues')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beginIndex', $pb.PbFieldType.O3, protoName: 'beginIndex')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endIndex', $pb.PbFieldType.O3, protoName: 'endIndex')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'days', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetMatchlistRequest._() : super();
  factory GetMatchlistRequest({
    $core.String? summoners,
    $core.String? region,
    $core.String? language,
    $core.String? queues,
    $core.int? beginIndex,
    $core.int? endIndex,
    $core.int? days,
  }) {
    final _result = create();
    if (summoners != null) {
      _result.summoners = summoners;
    }
    if (region != null) {
      _result.region = region;
    }
    if (language != null) {
      _result.language = language;
    }
    if (queues != null) {
      _result.queues = queues;
    }
    if (beginIndex != null) {
      _result.beginIndex = beginIndex;
    }
    if (endIndex != null) {
      _result.endIndex = endIndex;
    }
    if (days != null) {
      _result.days = days;
    }
    return _result;
  }
  factory GetMatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMatchlistRequest clone() => GetMatchlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMatchlistRequest copyWith(void Function(GetMatchlistRequest) updates) => super.copyWith((message) => updates(message as GetMatchlistRequest)) as GetMatchlistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMatchlistRequest create() => GetMatchlistRequest._();
  GetMatchlistRequest createEmptyInstance() => create();
  static $pb.PbList<GetMatchlistRequest> createRepeated() => $pb.PbList<GetMatchlistRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMatchlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMatchlistRequest>(create);
  static GetMatchlistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get summoners => $_getSZ(0);
  @$pb.TagNumber(1)
  set summoners($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSummoners() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummoners() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get region => $_getSZ(1);
  @$pb.TagNumber(2)
  set region($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegion() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get language => $_getSZ(2);
  @$pb.TagNumber(3)
  set language($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLanguage() => $_has(2);
  @$pb.TagNumber(3)
  void clearLanguage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get queues => $_getSZ(3);
  @$pb.TagNumber(4)
  set queues($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQueues() => $_has(3);
  @$pb.TagNumber(4)
  void clearQueues() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get beginIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set beginIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBeginIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearBeginIndex() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get endIndex => $_getIZ(5);
  @$pb.TagNumber(6)
  set endIndex($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndIndex() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get days => $_getIZ(6);
  @$pb.TagNumber(7)
  set days($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDays() => $_has(6);
  @$pb.TagNumber(7)
  void clearDays() => clearField(7);
}

class MatchlistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MatchlistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matchIds', $pb.PbFieldType.P3, protoName: 'matchIds')
    ..pc<DetailedSummoner>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoners', $pb.PbFieldType.PM, subBuilder: DetailedSummoner.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalGames', $pb.PbFieldType.O3, protoName: 'totalGames')
    ..hasRequiredFields = false
  ;

  MatchlistRequest._() : super();
  factory MatchlistRequest({
    $core.String? region,
    $core.String? language,
    $core.Iterable<$core.int>? matchIds,
    $core.Iterable<DetailedSummoner>? summoners,
    $core.int? totalGames,
  }) {
    final _result = create();
    if (region != null) {
      _result.region = region;
    }
    if (language != null) {
      _result.language = language;
    }
    if (matchIds != null) {
      _result.matchIds.addAll(matchIds);
    }
    if (summoners != null) {
      _result.summoners.addAll(summoners);
    }
    if (totalGames != null) {
      _result.totalGames = totalGames;
    }
    return _result;
  }
  factory MatchlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchlistRequest clone() => MatchlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchlistRequest copyWith(void Function(MatchlistRequest) updates) => super.copyWith((message) => updates(message as MatchlistRequest)) as MatchlistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchlistRequest create() => MatchlistRequest._();
  MatchlistRequest createEmptyInstance() => create();
  static $pb.PbList<MatchlistRequest> createRepeated() => $pb.PbList<MatchlistRequest>();
  @$core.pragma('dart2js:noInline')
  static MatchlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchlistRequest>(create);
  static MatchlistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get region => $_getSZ(0);
  @$pb.TagNumber(1)
  set region($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRegion() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get language => $_getSZ(1);
  @$pb.TagNumber(2)
  set language($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLanguage() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get matchIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<DetailedSummoner> get summoners => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get totalGames => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalGames($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalGames() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalGames() => clearField(5);
}

class DetailedSummoner extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailedSummoner', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOM<SummonerDTO>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summoner', subBuilder: SummonerDTO.create)
    ..pc<LeagueEntryDTO>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summonerLeagues', $pb.PbFieldType.PM, protoName: 'summonerLeagues', subBuilder: LeagueEntryDTO.create)
    ..hasRequiredFields = false
  ;

  DetailedSummoner._() : super();
  factory DetailedSummoner({
    SummonerDTO? summoner,
    $core.Iterable<LeagueEntryDTO>? summonerLeagues,
  }) {
    final _result = create();
    if (summoner != null) {
      _result.summoner = summoner;
    }
    if (summonerLeagues != null) {
      _result.summonerLeagues.addAll(summonerLeagues);
    }
    return _result;
  }
  factory DetailedSummoner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailedSummoner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailedSummoner clone() => DetailedSummoner()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailedSummoner copyWith(void Function(DetailedSummoner) updates) => super.copyWith((message) => updates(message as DetailedSummoner)) as DetailedSummoner; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailedSummoner create() => DetailedSummoner._();
  DetailedSummoner createEmptyInstance() => create();
  static $pb.PbList<DetailedSummoner> createRepeated() => $pb.PbList<DetailedSummoner>();
  @$core.pragma('dart2js:noInline')
  static DetailedSummoner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailedSummoner>(create);
  static DetailedSummoner? _defaultInstance;

  @$pb.TagNumber(1)
  SummonerDTO get summoner => $_getN(0);
  @$pb.TagNumber(1)
  set summoner(SummonerDTO v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSummoner() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummoner() => clearField(1);
  @$pb.TagNumber(1)
  SummonerDTO ensureSummoner() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<LeagueEntryDTO> get summonerLeagues => $_getList(1);
}

class LeagueEntryDTO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeagueEntryDTO', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leagueId', protoName: 'leagueId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summonerId', protoName: 'summonerId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summonerName', protoName: 'summonerName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queueType', protoName: 'queueType')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tier')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rank')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leaguePoints', $pb.PbFieldType.O3, protoName: 'leaguePoints')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wins', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'losses', $pb.PbFieldType.O3)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotStreak', protoName: 'hotStreak')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'veteran')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'freshBlood', protoName: 'freshBlood')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inactive')
    ..aOM<MiniSeriesDTO>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'miniSeries', protoName: 'miniSeries', subBuilder: MiniSeriesDTO.create)
    ..hasRequiredFields = false
  ;

  LeagueEntryDTO._() : super();
  factory LeagueEntryDTO({
    $core.String? leagueId,
    $core.String? summonerId,
    $core.String? summonerName,
    $core.String? queueType,
    $core.String? tier,
    $core.String? rank,
    $core.int? leaguePoints,
    $core.int? wins,
    $core.int? losses,
    $core.bool? hotStreak,
    $core.bool? veteran,
    $core.bool? freshBlood,
    $core.bool? inactive,
    MiniSeriesDTO? miniSeries,
  }) {
    final _result = create();
    if (leagueId != null) {
      _result.leagueId = leagueId;
    }
    if (summonerId != null) {
      _result.summonerId = summonerId;
    }
    if (summonerName != null) {
      _result.summonerName = summonerName;
    }
    if (queueType != null) {
      _result.queueType = queueType;
    }
    if (tier != null) {
      _result.tier = tier;
    }
    if (rank != null) {
      _result.rank = rank;
    }
    if (leaguePoints != null) {
      _result.leaguePoints = leaguePoints;
    }
    if (wins != null) {
      _result.wins = wins;
    }
    if (losses != null) {
      _result.losses = losses;
    }
    if (hotStreak != null) {
      _result.hotStreak = hotStreak;
    }
    if (veteran != null) {
      _result.veteran = veteran;
    }
    if (freshBlood != null) {
      _result.freshBlood = freshBlood;
    }
    if (inactive != null) {
      _result.inactive = inactive;
    }
    if (miniSeries != null) {
      _result.miniSeries = miniSeries;
    }
    return _result;
  }
  factory LeagueEntryDTO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeagueEntryDTO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeagueEntryDTO clone() => LeagueEntryDTO()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeagueEntryDTO copyWith(void Function(LeagueEntryDTO) updates) => super.copyWith((message) => updates(message as LeagueEntryDTO)) as LeagueEntryDTO; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeagueEntryDTO create() => LeagueEntryDTO._();
  LeagueEntryDTO createEmptyInstance() => create();
  static $pb.PbList<LeagueEntryDTO> createRepeated() => $pb.PbList<LeagueEntryDTO>();
  @$core.pragma('dart2js:noInline')
  static LeagueEntryDTO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeagueEntryDTO>(create);
  static LeagueEntryDTO? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get leagueId => $_getSZ(0);
  @$pb.TagNumber(1)
  set leagueId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeagueId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeagueId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get summonerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set summonerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSummonerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummonerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get summonerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set summonerName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSummonerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSummonerName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get queueType => $_getSZ(3);
  @$pb.TagNumber(4)
  set queueType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQueueType() => $_has(3);
  @$pb.TagNumber(4)
  void clearQueueType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tier => $_getSZ(4);
  @$pb.TagNumber(5)
  set tier($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTier() => $_has(4);
  @$pb.TagNumber(5)
  void clearTier() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get rank => $_getSZ(5);
  @$pb.TagNumber(6)
  set rank($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRank() => $_has(5);
  @$pb.TagNumber(6)
  void clearRank() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get leaguePoints => $_getIZ(6);
  @$pb.TagNumber(7)
  set leaguePoints($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLeaguePoints() => $_has(6);
  @$pb.TagNumber(7)
  void clearLeaguePoints() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get wins => $_getIZ(7);
  @$pb.TagNumber(8)
  set wins($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWins() => $_has(7);
  @$pb.TagNumber(8)
  void clearWins() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get losses => $_getIZ(8);
  @$pb.TagNumber(9)
  set losses($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLosses() => $_has(8);
  @$pb.TagNumber(9)
  void clearLosses() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get hotStreak => $_getBF(9);
  @$pb.TagNumber(10)
  set hotStreak($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHotStreak() => $_has(9);
  @$pb.TagNumber(10)
  void clearHotStreak() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get veteran => $_getBF(10);
  @$pb.TagNumber(11)
  set veteran($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasVeteran() => $_has(10);
  @$pb.TagNumber(11)
  void clearVeteran() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get freshBlood => $_getBF(11);
  @$pb.TagNumber(12)
  set freshBlood($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFreshBlood() => $_has(11);
  @$pb.TagNumber(12)
  void clearFreshBlood() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get inactive => $_getBF(12);
  @$pb.TagNumber(13)
  set inactive($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasInactive() => $_has(12);
  @$pb.TagNumber(13)
  void clearInactive() => clearField(13);

  @$pb.TagNumber(14)
  MiniSeriesDTO get miniSeries => $_getN(13);
  @$pb.TagNumber(14)
  set miniSeries(MiniSeriesDTO v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasMiniSeries() => $_has(13);
  @$pb.TagNumber(14)
  void clearMiniSeries() => clearField(14);
  @$pb.TagNumber(14)
  MiniSeriesDTO ensureMiniSeries() => $_ensure(13);
}

class MiniSeriesDTO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiniSeriesDTO', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'progress')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'losses', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'target', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wins', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MiniSeriesDTO._() : super();
  factory MiniSeriesDTO({
    $core.String? progress,
    $core.int? losses,
    $core.int? target,
    $core.int? wins,
  }) {
    final _result = create();
    if (progress != null) {
      _result.progress = progress;
    }
    if (losses != null) {
      _result.losses = losses;
    }
    if (target != null) {
      _result.target = target;
    }
    if (wins != null) {
      _result.wins = wins;
    }
    return _result;
  }
  factory MiniSeriesDTO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiniSeriesDTO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiniSeriesDTO clone() => MiniSeriesDTO()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiniSeriesDTO copyWith(void Function(MiniSeriesDTO) updates) => super.copyWith((message) => updates(message as MiniSeriesDTO)) as MiniSeriesDTO; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiniSeriesDTO create() => MiniSeriesDTO._();
  MiniSeriesDTO createEmptyInstance() => create();
  static $pb.PbList<MiniSeriesDTO> createRepeated() => $pb.PbList<MiniSeriesDTO>();
  @$core.pragma('dart2js:noInline')
  static MiniSeriesDTO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiniSeriesDTO>(create);
  static MiniSeriesDTO? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get progress => $_getSZ(0);
  @$pb.TagNumber(1)
  set progress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProgress() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get losses => $_getIZ(1);
  @$pb.TagNumber(2)
  set losses($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLosses() => $_has(1);
  @$pb.TagNumber(2)
  void clearLosses() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get target => $_getIZ(2);
  @$pb.TagNumber(3)
  set target($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearTarget() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get wins => $_getIZ(3);
  @$pb.TagNumber(4)
  set wins($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWins() => $_has(3);
  @$pb.TagNumber(4)
  void clearWins() => clearField(4);
}

class SummonerDTO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SummonerDTO', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.leagueofteams.summoner.controller'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', protoName: 'accountId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileIconId', $pb.PbFieldType.O3, protoName: 'profileIconId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revisionDate', $pb.PbFieldType.O3, protoName: 'revisionDate')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puuid')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summonerLevel', $pb.PbFieldType.O3, protoName: 'summonerLevel')
    ..hasRequiredFields = false
  ;

  SummonerDTO._() : super();
  factory SummonerDTO({
    $core.String? accountId,
    $core.int? profileIconId,
    $core.int? revisionDate,
    $core.String? name,
    $core.String? id,
    $core.String? puuid,
    $core.int? summonerLevel,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (profileIconId != null) {
      _result.profileIconId = profileIconId;
    }
    if (revisionDate != null) {
      _result.revisionDate = revisionDate;
    }
    if (name != null) {
      _result.name = name;
    }
    if (id != null) {
      _result.id = id;
    }
    if (puuid != null) {
      _result.puuid = puuid;
    }
    if (summonerLevel != null) {
      _result.summonerLevel = summonerLevel;
    }
    return _result;
  }
  factory SummonerDTO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SummonerDTO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SummonerDTO clone() => SummonerDTO()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SummonerDTO copyWith(void Function(SummonerDTO) updates) => super.copyWith((message) => updates(message as SummonerDTO)) as SummonerDTO; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SummonerDTO create() => SummonerDTO._();
  SummonerDTO createEmptyInstance() => create();
  static $pb.PbList<SummonerDTO> createRepeated() => $pb.PbList<SummonerDTO>();
  @$core.pragma('dart2js:noInline')
  static SummonerDTO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SummonerDTO>(create);
  static SummonerDTO? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get profileIconId => $_getIZ(1);
  @$pb.TagNumber(2)
  set profileIconId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileIconId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileIconId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get revisionDate => $_getIZ(2);
  @$pb.TagNumber(3)
  set revisionDate($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRevisionDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRevisionDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get id => $_getSZ(4);
  @$pb.TagNumber(5)
  set id($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get puuid => $_getSZ(5);
  @$pb.TagNumber(6)
  set puuid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPuuid() => $_has(5);
  @$pb.TagNumber(6)
  void clearPuuid() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get summonerLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set summonerLevel($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSummonerLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearSummonerLevel() => clearField(7);
}

