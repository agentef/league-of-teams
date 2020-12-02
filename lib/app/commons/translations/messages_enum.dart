enum MessagesEnum {
  please_wait,
  go,

  // Home Page

  HP_insert_names,
  HP_must_contain_2,
  HP_days_filter_message1,
  HP_days_filter_message2,

  // Statistics Page

  SP_summoner_not_found,
  SP_no_matches_found
}

extension GetMessages on MessagesEnum {

  String get get => this.toString();

}