enum MessagesEnum {
  please_wait,
  insert_names,
  must_contain_2,
  go,
  days_filter_message1,
  days_filter_message2,

}

extension GetMessages on MessagesEnum {

  String get get => this.toString();

}