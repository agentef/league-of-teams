
enum Languages {

  pt_BR,
  en_US

}

extension LanguageNames on Languages {

  String get get => this.toString().substring(10);

  String get language => LanguagesHelper.languages.entries.where((e) => e.key == this).first.value;

}

class LanguagesHelper {

  static Map<Languages, String> get languages => {
    Languages.pt_BR: "Português",
    Languages.en_US: "English"
  };

}