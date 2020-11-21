enum Tier {

  IRON,
  BRONZE,
  SILVER,
  GOLD,
  PLATINUM,
  DIAMOND,
  MASTER,
  GRANDMASTER,
  CHALLENGER

}

extension TierExt on Tier {

  toSimpleString() => this.toString().substring(5);

}

