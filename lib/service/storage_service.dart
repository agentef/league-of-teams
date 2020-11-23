import 'dart:html';

class StorageService {

  static const xRegion = "X-Region";
  static const xSummoners = "summoners";

  void saveRegion(String region) => window.localStorage[xRegion] = region;

  String findRegion() => window.localStorage[xRegion];

  void saveSummoners(String summoners) => window.localStorage[xSummoners] = summoners;

  String findSummoners() => window.localStorage[xSummoners];

}