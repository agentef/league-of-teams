///
//  Generated code. Do not modify.
//  source: StatsController.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use matchListResponseDescriptor instead')
const MatchListResponse$json = const {
  '1': 'MatchListResponse',
  '2': const [
    const {'1': 'matchIds', '3': 1, '4': 3, '5': 5, '10': 'matchIds'},
    const {'1': 'summoners', '3': 2, '4': 3, '5': 11, '6': '.com.leagueofteams.summoner.controller.DetailedSummoner', '10': 'summoners'},
    const {'1': 'totalGames', '3': 3, '4': 1, '5': 5, '10': 'totalGames'},
    const {'1': 'dataDragonVersion', '3': 4, '4': 1, '5': 9, '10': 'dataDragonVersion'},
  ],
};

/// Descriptor for `MatchListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchListResponseDescriptor = $convert.base64Decode('ChFNYXRjaExpc3RSZXNwb25zZRIaCghtYXRjaElkcxgBIAMoBVIIbWF0Y2hJZHMSVQoJc3VtbW9uZXJzGAIgAygLMjcuY29tLmxlYWd1ZW9mdGVhbXMuc3VtbW9uZXIuY29udHJvbGxlci5EZXRhaWxlZFN1bW1vbmVyUglzdW1tb25lcnMSHgoKdG90YWxHYW1lcxgDIAEoBVIKdG90YWxHYW1lcxIsChFkYXRhRHJhZ29uVmVyc2lvbhgEIAEoCVIRZGF0YURyYWdvblZlcnNpb24=');
@$core.Deprecated('Use compStatsResponseDescriptor instead')
const CompStatsResponse$json = const {
  '1': 'CompStatsResponse',
  '2': const [
    const {'1': 'summoners', '3': 1, '4': 3, '5': 11, '6': '.com.leagueofteams.summoner.controller.SummonerDTO', '10': 'summoners'},
    const {'1': 'compStats', '3': 2, '4': 3, '5': 11, '6': '.com.leagueofteams.summoner.controller.CompStats', '10': 'compStats'},
    const {'1': 'firstGameDate', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'firstGameDate'},
    const {'1': 'lastGameDate', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastGameDate'},
    const {'1': 'totalGames', '3': 5, '4': 1, '5': 5, '10': 'totalGames'},
    const {'1': 'totalWinRate', '3': 6, '4': 1, '5': 1, '10': 'totalWinRate'},
    const {'1': 'totalWins', '3': 7, '4': 1, '5': 5, '10': 'totalWins'},
    const {'1': 'totalLoses', '3': 8, '4': 1, '5': 5, '10': 'totalLoses'},
  ],
};

/// Descriptor for `CompStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compStatsResponseDescriptor = $convert.base64Decode('ChFDb21wU3RhdHNSZXNwb25zZRJQCglzdW1tb25lcnMYASADKAsyMi5jb20ubGVhZ3Vlb2Z0ZWFtcy5zdW1tb25lci5jb250cm9sbGVyLlN1bW1vbmVyRFRPUglzdW1tb25lcnMSTgoJY29tcFN0YXRzGAIgAygLMjAuY29tLmxlYWd1ZW9mdGVhbXMuc3VtbW9uZXIuY29udHJvbGxlci5Db21wU3RhdHNSCWNvbXBTdGF0cxJACg1maXJzdEdhbWVEYXRlGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFINZmlyc3RHYW1lRGF0ZRI+CgxsYXN0R2FtZURhdGUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgxsYXN0R2FtZURhdGUSHgoKdG90YWxHYW1lcxgFIAEoBVIKdG90YWxHYW1lcxIiCgx0b3RhbFdpblJhdGUYBiABKAFSDHRvdGFsV2luUmF0ZRIcCgl0b3RhbFdpbnMYByABKAVSCXRvdGFsV2lucxIeCgp0b3RhbExvc2VzGAggASgFUgp0b3RhbExvc2Vz');
@$core.Deprecated('Use compStatsDescriptor instead')
const CompStats$json = const {
  '1': 'CompStats',
  '2': const [
    const {'1': 'totalGames', '3': 1, '4': 1, '5': 5, '10': 'totalGames'},
    const {'1': 'winRate', '3': 2, '4': 1, '5': 1, '10': 'winRate'},
    const {'1': 'wins', '3': 3, '4': 1, '5': 5, '10': 'wins'},
    const {'1': 'loses', '3': 4, '4': 1, '5': 5, '10': 'loses'},
    const {'1': 'summoner1Info', '3': 5, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.CompSummonerInfo', '10': 'summoner1Info'},
    const {'1': 'summoner2Info', '3': 6, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.CompSummonerInfo', '10': 'summoner2Info'},
    const {'1': 'summoner3Info', '3': 7, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.CompSummonerInfo', '10': 'summoner3Info'},
    const {'1': 'summoner4Info', '3': 8, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.CompSummonerInfo', '10': 'summoner4Info'},
    const {'1': 'summoner5Info', '3': 9, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.CompSummonerInfo', '10': 'summoner5Info'},
  ],
};

/// Descriptor for `CompStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compStatsDescriptor = $convert.base64Decode('CglDb21wU3RhdHMSHgoKdG90YWxHYW1lcxgBIAEoBVIKdG90YWxHYW1lcxIYCgd3aW5SYXRlGAIgASgBUgd3aW5SYXRlEhIKBHdpbnMYAyABKAVSBHdpbnMSFAoFbG9zZXMYBCABKAVSBWxvc2VzEl0KDXN1bW1vbmVyMUluZm8YBSABKAsyNy5jb20ubGVhZ3Vlb2Z0ZWFtcy5zdW1tb25lci5jb250cm9sbGVyLkNvbXBTdW1tb25lckluZm9SDXN1bW1vbmVyMUluZm8SXQoNc3VtbW9uZXIySW5mbxgGIAEoCzI3LmNvbS5sZWFndWVvZnRlYW1zLnN1bW1vbmVyLmNvbnRyb2xsZXIuQ29tcFN1bW1vbmVySW5mb1INc3VtbW9uZXIySW5mbxJdCg1zdW1tb25lcjNJbmZvGAcgASgLMjcuY29tLmxlYWd1ZW9mdGVhbXMuc3VtbW9uZXIuY29udHJvbGxlci5Db21wU3VtbW9uZXJJbmZvUg1zdW1tb25lcjNJbmZvEl0KDXN1bW1vbmVyNEluZm8YCCABKAsyNy5jb20ubGVhZ3Vlb2Z0ZWFtcy5zdW1tb25lci5jb250cm9sbGVyLkNvbXBTdW1tb25lckluZm9SDXN1bW1vbmVyNEluZm8SXQoNc3VtbW9uZXI1SW5mbxgJIAEoCzI3LmNvbS5sZWFndWVvZnRlYW1zLnN1bW1vbmVyLmNvbnRyb2xsZXIuQ29tcFN1bW1vbmVySW5mb1INc3VtbW9uZXI1SW5mbw==');
@$core.Deprecated('Use compSummonerInfoDescriptor instead')
const CompSummonerInfo$json = const {
  '1': 'CompSummonerInfo',
  '2': const [
    const {'1': 'summonerName', '3': 1, '4': 1, '5': 9, '10': 'summonerName'},
    const {'1': 'championName', '3': 2, '4': 1, '5': 9, '10': 'championName'},
    const {'1': 'kills', '3': 3, '4': 1, '5': 1, '10': 'kills'},
    const {'1': 'deaths', '3': 4, '4': 1, '5': 1, '10': 'deaths'},
    const {'1': 'assists', '3': 5, '4': 1, '5': 1, '10': 'assists'},
    const {'1': 'cs', '3': 6, '4': 1, '5': 1, '10': 'cs'},
  ],
};

/// Descriptor for `CompSummonerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compSummonerInfoDescriptor = $convert.base64Decode('ChBDb21wU3VtbW9uZXJJbmZvEiIKDHN1bW1vbmVyTmFtZRgBIAEoCVIMc3VtbW9uZXJOYW1lEiIKDGNoYW1waW9uTmFtZRgCIAEoCVIMY2hhbXBpb25OYW1lEhQKBWtpbGxzGAMgASgBUgVraWxscxIWCgZkZWF0aHMYBCABKAFSBmRlYXRocxIYCgdhc3Npc3RzGAUgASgBUgdhc3Npc3RzEg4KAmNzGAYgASgBUgJjcw==');
@$core.Deprecated('Use getMatchlistRequestDescriptor instead')
const GetMatchlistRequest$json = const {
  '1': 'GetMatchlistRequest',
  '2': const [
    const {'1': 'summoners', '3': 1, '4': 1, '5': 9, '10': 'summoners'},
    const {'1': 'region', '3': 2, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'language', '3': 3, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'queues', '3': 4, '4': 1, '5': 9, '10': 'queues'},
    const {'1': 'beginIndex', '3': 5, '4': 1, '5': 5, '10': 'beginIndex'},
    const {'1': 'endIndex', '3': 6, '4': 1, '5': 5, '10': 'endIndex'},
    const {'1': 'days', '3': 7, '4': 1, '5': 5, '10': 'days'},
  ],
};

/// Descriptor for `GetMatchlistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMatchlistRequestDescriptor = $convert.base64Decode('ChNHZXRNYXRjaGxpc3RSZXF1ZXN0EhwKCXN1bW1vbmVycxgBIAEoCVIJc3VtbW9uZXJzEhYKBnJlZ2lvbhgCIAEoCVIGcmVnaW9uEhoKCGxhbmd1YWdlGAMgASgJUghsYW5ndWFnZRIWCgZxdWV1ZXMYBCABKAlSBnF1ZXVlcxIeCgpiZWdpbkluZGV4GAUgASgFUgpiZWdpbkluZGV4EhoKCGVuZEluZGV4GAYgASgFUghlbmRJbmRleBISCgRkYXlzGAcgASgFUgRkYXlz');
@$core.Deprecated('Use matchlistRequestDescriptor instead')
const MatchlistRequest$json = const {
  '1': 'MatchlistRequest',
  '2': const [
    const {'1': 'region', '3': 1, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'language', '3': 2, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'matchIds', '3': 3, '4': 3, '5': 5, '10': 'matchIds'},
    const {'1': 'summoners', '3': 4, '4': 3, '5': 11, '6': '.com.leagueofteams.summoner.controller.DetailedSummoner', '10': 'summoners'},
    const {'1': 'totalGames', '3': 5, '4': 1, '5': 5, '10': 'totalGames'},
  ],
};

/// Descriptor for `MatchlistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchlistRequestDescriptor = $convert.base64Decode('ChBNYXRjaGxpc3RSZXF1ZXN0EhYKBnJlZ2lvbhgBIAEoCVIGcmVnaW9uEhoKCGxhbmd1YWdlGAIgASgJUghsYW5ndWFnZRIaCghtYXRjaElkcxgDIAMoBVIIbWF0Y2hJZHMSVQoJc3VtbW9uZXJzGAQgAygLMjcuY29tLmxlYWd1ZW9mdGVhbXMuc3VtbW9uZXIuY29udHJvbGxlci5EZXRhaWxlZFN1bW1vbmVyUglzdW1tb25lcnMSHgoKdG90YWxHYW1lcxgFIAEoBVIKdG90YWxHYW1lcw==');
@$core.Deprecated('Use detailedSummonerDescriptor instead')
const DetailedSummoner$json = const {
  '1': 'DetailedSummoner',
  '2': const [
    const {'1': 'summoner', '3': 1, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.SummonerDTO', '10': 'summoner'},
    const {'1': 'summonerLeagues', '3': 2, '4': 3, '5': 11, '6': '.com.leagueofteams.summoner.controller.LeagueEntryDTO', '10': 'summonerLeagues'},
  ],
};

/// Descriptor for `DetailedSummoner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailedSummonerDescriptor = $convert.base64Decode('ChBEZXRhaWxlZFN1bW1vbmVyEk4KCHN1bW1vbmVyGAEgASgLMjIuY29tLmxlYWd1ZW9mdGVhbXMuc3VtbW9uZXIuY29udHJvbGxlci5TdW1tb25lckRUT1IIc3VtbW9uZXISXwoPc3VtbW9uZXJMZWFndWVzGAIgAygLMjUuY29tLmxlYWd1ZW9mdGVhbXMuc3VtbW9uZXIuY29udHJvbGxlci5MZWFndWVFbnRyeURUT1IPc3VtbW9uZXJMZWFndWVz');
@$core.Deprecated('Use leagueEntryDTODescriptor instead')
const LeagueEntryDTO$json = const {
  '1': 'LeagueEntryDTO',
  '2': const [
    const {'1': 'leagueId', '3': 1, '4': 1, '5': 9, '10': 'leagueId'},
    const {'1': 'summonerId', '3': 2, '4': 1, '5': 9, '10': 'summonerId'},
    const {'1': 'summonerName', '3': 3, '4': 1, '5': 9, '10': 'summonerName'},
    const {'1': 'queueType', '3': 4, '4': 1, '5': 9, '10': 'queueType'},
    const {'1': 'tier', '3': 5, '4': 1, '5': 9, '10': 'tier'},
    const {'1': 'rank', '3': 6, '4': 1, '5': 9, '10': 'rank'},
    const {'1': 'leaguePoints', '3': 7, '4': 1, '5': 5, '10': 'leaguePoints'},
    const {'1': 'wins', '3': 8, '4': 1, '5': 5, '10': 'wins'},
    const {'1': 'losses', '3': 9, '4': 1, '5': 5, '10': 'losses'},
    const {'1': 'hotStreak', '3': 10, '4': 1, '5': 8, '10': 'hotStreak'},
    const {'1': 'veteran', '3': 11, '4': 1, '5': 8, '10': 'veteran'},
    const {'1': 'freshBlood', '3': 12, '4': 1, '5': 8, '10': 'freshBlood'},
    const {'1': 'inactive', '3': 13, '4': 1, '5': 8, '10': 'inactive'},
    const {'1': 'miniSeries', '3': 14, '4': 1, '5': 11, '6': '.com.leagueofteams.summoner.controller.MiniSeriesDTO', '10': 'miniSeries'},
  ],
};

/// Descriptor for `LeagueEntryDTO`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leagueEntryDTODescriptor = $convert.base64Decode('Cg5MZWFndWVFbnRyeURUTxIaCghsZWFndWVJZBgBIAEoCVIIbGVhZ3VlSWQSHgoKc3VtbW9uZXJJZBgCIAEoCVIKc3VtbW9uZXJJZBIiCgxzdW1tb25lck5hbWUYAyABKAlSDHN1bW1vbmVyTmFtZRIcCglxdWV1ZVR5cGUYBCABKAlSCXF1ZXVlVHlwZRISCgR0aWVyGAUgASgJUgR0aWVyEhIKBHJhbmsYBiABKAlSBHJhbmsSIgoMbGVhZ3VlUG9pbnRzGAcgASgFUgxsZWFndWVQb2ludHMSEgoEd2lucxgIIAEoBVIEd2lucxIWCgZsb3NzZXMYCSABKAVSBmxvc3NlcxIcCglob3RTdHJlYWsYCiABKAhSCWhvdFN0cmVhaxIYCgd2ZXRlcmFuGAsgASgIUgd2ZXRlcmFuEh4KCmZyZXNoQmxvb2QYDCABKAhSCmZyZXNoQmxvb2QSGgoIaW5hY3RpdmUYDSABKAhSCGluYWN0aXZlElQKCm1pbmlTZXJpZXMYDiABKAsyNC5jb20ubGVhZ3Vlb2Z0ZWFtcy5zdW1tb25lci5jb250cm9sbGVyLk1pbmlTZXJpZXNEVE9SCm1pbmlTZXJpZXM=');
@$core.Deprecated('Use miniSeriesDTODescriptor instead')
const MiniSeriesDTO$json = const {
  '1': 'MiniSeriesDTO',
  '2': const [
    const {'1': 'progress', '3': 1, '4': 1, '5': 9, '10': 'progress'},
    const {'1': 'losses', '3': 2, '4': 1, '5': 5, '10': 'losses'},
    const {'1': 'target', '3': 3, '4': 1, '5': 5, '10': 'target'},
    const {'1': 'wins', '3': 4, '4': 1, '5': 5, '10': 'wins'},
  ],
};

/// Descriptor for `MiniSeriesDTO`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miniSeriesDTODescriptor = $convert.base64Decode('Cg1NaW5pU2VyaWVzRFRPEhoKCHByb2dyZXNzGAEgASgJUghwcm9ncmVzcxIWCgZsb3NzZXMYAiABKAVSBmxvc3NlcxIWCgZ0YXJnZXQYAyABKAVSBnRhcmdldBISCgR3aW5zGAQgASgFUgR3aW5z');
@$core.Deprecated('Use summonerDTODescriptor instead')
const SummonerDTO$json = const {
  '1': 'SummonerDTO',
  '2': const [
    const {'1': 'accountId', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'profileIconId', '3': 2, '4': 1, '5': 5, '10': 'profileIconId'},
    const {'1': 'revisionDate', '3': 3, '4': 1, '5': 5, '10': 'revisionDate'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 5, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'puuid', '3': 6, '4': 1, '5': 9, '10': 'puuid'},
    const {'1': 'summonerLevel', '3': 7, '4': 1, '5': 5, '10': 'summonerLevel'},
  ],
};

/// Descriptor for `SummonerDTO`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List summonerDTODescriptor = $convert.base64Decode('CgtTdW1tb25lckRUTxIcCglhY2NvdW50SWQYASABKAlSCWFjY291bnRJZBIkCg1wcm9maWxlSWNvbklkGAIgASgFUg1wcm9maWxlSWNvbklkEiIKDHJldmlzaW9uRGF0ZRgDIAEoBVIMcmV2aXNpb25EYXRlEhIKBG5hbWUYBCABKAlSBG5hbWUSDgoCaWQYBSABKAlSAmlkEhQKBXB1dWlkGAYgASgJUgVwdXVpZBIkCg1zdW1tb25lckxldmVsGAcgASgFUg1zdW1tb25lckxldmVs');
