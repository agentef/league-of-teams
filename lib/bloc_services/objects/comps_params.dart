class CompsParams {
  String region;
  String language;
  DateTime initialDate;
  DateTime endDate;
  String queues;
  int endIndex;
  int beginIndex;

  CompsParams(this.region, this.language, this.initialDate, this.endDate, this.queues, this.endIndex, this.beginIndex);

  @override
  String toString() {
    return "{region=$region, language=$language, initialDate=$initialDate, endDate=$endDate, queues=$queues, endIndex=$endIndex, beginIndex=$beginIndex}";
  }
}
