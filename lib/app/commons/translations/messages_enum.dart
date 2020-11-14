import 'package:get/get.dart';

enum MessagesEnum {
  please_wait,
  insert_names,
}

extension GetMessages on MessagesEnum {

  String get get => this.toString();

}