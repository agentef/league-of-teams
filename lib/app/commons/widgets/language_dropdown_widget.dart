import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/app/commons/translations/languages.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_header.dart';
import 'package:league_team_analytics/configuration/constants.dart';

class LanguageDropdownButton extends StatelessWidget {
  final box = GetStorage();

  static final languageDropdownItems = Languages.values.map((e) => DropdownMenuItem(value: e.get, child: Text(e.language))).toList();

  @override
  Widget build(BuildContext context) {
    final selectedLanguage = languageDropdownItems.where((e) => e.value.toLowerCase() == (box.read(Constants.LANGUAGE) as String).toLowerCase()).first;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
          icon: Icon(Icons.place, color: CustomColors.appColorScheme.onPrimary),
          iconSize: 24,
          style: TextStyles.LanguageTextStyle,
          value: selectedLanguage.value,
          items: languageDropdownItems,
          dropdownColor: CustomColors.appColorScheme.secondary,
          underline: SizedBox(height: 0),
          onChanged: (value) {
            box.write(Constants.LANGUAGE, value);
            Get.updateLocale(Locale(value));
          }),
    );
  }
}
