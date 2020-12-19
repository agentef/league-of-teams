
enum Languages {

  PT_BR,
  EN_US

}

extension LanguageNames on Languages {

  String get get => this.toString();

  String get language => LanguagesHelper.languages.entries.where((e) => e.key == this).first.value;

}

class LanguagesHelper {

  static Map<Languages, String> get languages => {
    Languages.PT_BR: "Português",
    Languages.EN_US: "English"
  };

}