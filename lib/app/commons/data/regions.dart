enum Region {

  BR1,
  EUN1,
  EUW1,
  JP1,
  KR,
  LA1,
  LA2,
  NA1,
  OC1,
  TR1,
  RU

}

extension RegionExt on Region {
  String get name => this.toString().substring(7);
}
