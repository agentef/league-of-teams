import 'package:get/get.dart';

import 'messages_enum.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          MessagesEnum.insert_names.get: 'Enter two to five summoner names separated with comma (,)',
          MessagesEnum.please_wait.get: 'Please wait...'
        },
        'pt_BR': {
          MessagesEnum.insert_names.get: 'Insira de dois a cinco nomes de invocador separados com vírgula (,)',
          MessagesEnum.please_wait.get: 'Por favor, aguarde...'
        }
      };
}
