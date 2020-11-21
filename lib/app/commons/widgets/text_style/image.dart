import 'package:flutter/material.dart';
import 'package:league_team_analytics/configuration/constants.dart';

class Images {

  static getLogo({size}) => Image.network(Constants.logoUrl, width: size, height: size);

}