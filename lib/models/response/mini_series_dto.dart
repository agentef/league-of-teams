class MiniSeriesDTO {
  String progress;
  int losses;
  int target;
  int wins;

  Map<String, dynamic> toJson() => {
    'progress': progress,
    'losses': losses,
    'target': target,
    'wins': wins
  };

  MiniSeriesDTO.fromJson(Map<String, dynamic> json) :
        progress = json['progress'],
        losses = json['losses'],
        target = json['target'],
        wins = json['wins'];
}
