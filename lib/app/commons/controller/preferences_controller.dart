import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/data/regions.dart';

class PreferencesController {

  final region = Region.BR1.name.obs;

  setRegion(String region) => this.region(region);

}