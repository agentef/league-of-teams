import 'package:get/get.dart';

import 'messages_enum.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          MessagesEnum.HP_insert_names.get: 'Enter two to five summoner names separated with comma (,)',
          MessagesEnum.please_wait.get: 'Please wait...',
          MessagesEnum.HP_must_contain_2.get: 'Must contain at least two summoner names.',
          MessagesEnum.go.get: 'Go',
          MessagesEnum.HP_days_filter_message1.get: 'Search for last ',
          MessagesEnum.HP_days_filter_message2.get: ' days',
          MessagesEnum.HP_summoners_must_be_distincts.get: 'Summoners must be distincts.',
          MessagesEnum.SP_summoner_not_found.get: 'One or more summoners were not found.',
          MessagesEnum.SP_no_matches_found.get: 'No matches found for the provided time period.',
        },

        'pt_BR': {
          MessagesEnum.HP_insert_names.get: 'Insira de dois a cinco nomes de invocador separados com vírgula (,)',
          MessagesEnum.please_wait.get: 'Por favor, aguarde...',
          MessagesEnum.HP_must_contain_2.get: 'Deve conter pelo menos dois nomes de invocador.',
          MessagesEnum.go.get: 'Ir',
          MessagesEnum.HP_days_filter_message1.get: 'Pesquisar últimos ',
          MessagesEnum.HP_days_filter_message2.get: ' dias',
          MessagesEnum.HP_summoners_must_be_distincts.get: 'Os nomes de invocadores devem ser distintos.',
          MessagesEnum.SP_summoner_not_found.get: 'Um ou mais invocadores não foram encontrados.',
          MessagesEnum.SP_no_matches_found.get: 'Nenhuma partida foi encontrada para o período fornecido.',
        }
      };
}
