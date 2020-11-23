import 'package:get/get.dart';

import 'messages_enum.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          MessagesEnum.insert_names.get: 'Enter two to five summoner names separated with comma (,)',
          MessagesEnum.please_wait.get: 'Please wait...',
          MessagesEnum.must_contain_2.get: 'Must contain at least two summoner names.',
          MessagesEnum.go.get: 'Go',
          MessagesEnum.days_filter_message1.get: 'Search for last ',
          MessagesEnum.days_filter_message2.get: ' days',
        },
        'pt_BR': {
          MessagesEnum.insert_names.get: 'Insira de dois a cinco nomes de invocador separados com vírgula (,)',
          MessagesEnum.please_wait.get: 'Por favor, aguarde...',
          MessagesEnum.must_contain_2.get: 'Deve conter pelo menos dois nomes de invocador.',
          MessagesEnum.go.get: 'Ir',
          MessagesEnum.days_filter_message1.get: 'Pesquisar últimos ',
          MessagesEnum.days_filter_message2.get: ' dias',
        }
      };
}
