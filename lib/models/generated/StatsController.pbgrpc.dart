///
//  Generated code. Do not modify.
//  source: StatsController.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'StatsController.pb.dart' as $0;
export 'StatsController.pb.dart';

class StatsControllerClient extends $grpc.Client {
  static final _$getMostPlayedCompsByMatchList = $grpc.ClientMethod<
          $0.MatchlistRequest, $0.CompStatsResponse>(
      '/com.leagueofteams.summoner.controller.StatsController/GetMostPlayedCompsByMatchList',
      ($0.MatchlistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CompStatsResponse.fromBuffer(value));
  static final _$getMatchlistBySummoners = $grpc.ClientMethod<
          $0.GetMatchlistRequest, $0.MatchListResponse>(
      '/com.leagueofteams.summoner.controller.StatsController/GetMatchlistBySummoners',
      ($0.GetMatchlistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MatchListResponse.fromBuffer(value));

  StatsControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CompStatsResponse> getMostPlayedCompsByMatchList(
      $0.MatchlistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMostPlayedCompsByMatchList, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.MatchListResponse> getMatchlistBySummoners(
      $0.GetMatchlistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMatchlistBySummoners, request,
        options: options);
  }
}

abstract class StatsControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'com.leagueofteams.summoner.controller.StatsController';

  StatsControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MatchlistRequest, $0.CompStatsResponse>(
        'GetMostPlayedCompsByMatchList',
        getMostPlayedCompsByMatchList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MatchlistRequest.fromBuffer(value),
        ($0.CompStatsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMatchlistRequest, $0.MatchListResponse>(
            'GetMatchlistBySummoners',
            getMatchlistBySummoners_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetMatchlistRequest.fromBuffer(value),
            ($0.MatchListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CompStatsResponse> getMostPlayedCompsByMatchList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MatchlistRequest> request) async {
    return getMostPlayedCompsByMatchList(call, await request);
  }

  $async.Future<$0.MatchListResponse> getMatchlistBySummoners_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetMatchlistRequest> request) async {
    return getMatchlistBySummoners(call, await request);
  }

  $async.Future<$0.CompStatsResponse> getMostPlayedCompsByMatchList(
      $grpc.ServiceCall call, $0.MatchlistRequest request);
  $async.Future<$0.MatchListResponse> getMatchlistBySummoners(
      $grpc.ServiceCall call, $0.GetMatchlistRequest request);
}
