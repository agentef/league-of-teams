
import 'dart:async';
import 'dart:developer';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:league_team_analytics/bloc_services/statistics_service.dart';
import 'package:league_team_analytics/models/response/match_list_dto.dart';
import 'package:league_team_analytics/models/response/team_stats_dto.dart';

class StatisticsBloc extends BlocBase {


  StatisticsService _service;

  TeamStatsDTO _statsDTO;

  MatchListDto _matchListDto;
  
  final _statsController = StreamController<TeamStatsDTO>.broadcast();
  Stream get stats => _statsController.stream;

  final _statsSearchController = StreamController<Map<String, dynamic>>();
  Sink get findMatchesByMatchList => _statsSearchController.sink;

  final _matchListSearchController = StreamController<Map<String, dynamic>>();
  Sink get getMatchList => _matchListSearchController.sink;

  final _matchListController = StreamController<MatchListDto>.broadcast();
  Stream get matchList => _matchListController.stream;

  StatisticsBloc() {
    _service = StatisticsService();

    _matchListSearchController.stream.listen(_searchMatchList);
    _statsSearchController.stream.listen(_searchMatches);
  }

  void _searchMatchList(Map<String, dynamic> map) async {
    log("searching match list");
    _matchListDto = await _service.getMatchListBySummonerNames(map["summoners"], map["params"]);
    _matchListController.sink.add(_matchListDto);
  }
  void _searchMatches(Map<String, dynamic> map) async {
    log("searching matches");
    _statsDTO = await _service.getCompsByMatchList(map["matchList"], map["params"]);
    _statsController.sink.add(_statsDTO);
  }

  @override
  void dispose() {
    _statsController.close();
    _statsSearchController.close();
    _matchListController.close();
    _matchListSearchController.close();
    super.dispose();
  }

}

