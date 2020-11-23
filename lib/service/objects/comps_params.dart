class CompsParams {
  String region;
  String language;
  int days;
  String queues;
  int endIndex;
  int beginIndex;

  CompsParams(this.region, this.language, this.days, this.queues, this.endIndex, this.beginIndex);

  @override
  String toString() {
    return "{region=$region, language=$language, days=$days, queues=$queues, endIndex=$endIndex, beginIndex=$beginIndex}";
  }
}
