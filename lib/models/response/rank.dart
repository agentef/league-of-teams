enum Rank {
  I,
  II,
  III,
  IV

}

extension RanKExt on Rank {

  toSimpleString() => this.toString().substring(5);

}