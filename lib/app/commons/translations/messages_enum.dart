enum MessagesEnum {
  please_wait,
  go,

  // Home Page

  HP_insert_names,
  HP_must_contain_2,
  HP_days_filter_message1,
  HP_days_filter_message2,
  HP_summoners_must_be_distincts,
  HP_region_filter_message,

  // Statistics Page

  SP_summoner_not_found,
  SP_no_matches_found,
  SP_games,
  SP_win_rate,
  SP_wins,
  SP_loses,
  SP_Kills,
  SP_Deaths,
  SP_Assists,
  SP_cs,
  SP_total_games,
  SP_totals,

}

extension GetMessages on MessagesEnum {

  String get get => this.toString();

}