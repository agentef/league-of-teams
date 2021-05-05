import 'package:league_team_analytics/models/generated/StatsController.pb.dart';

class LocalMiniSeriesDTO {
  String progress;
  int losses;
  int target;
  int wins;

  LocalMiniSeriesDTO.from(MiniSeriesDTO ms) {
    this.progress = ms.progress;
    this.losses = ms.losses;
    this.target = ms.target;
    this.wins = ms.wins;
  }

  Map<String, dynamic> toJson() => {
    'progress': progress,
    'losses': losses,
    'target': target,
    'wins': wins
  };

  LocalMiniSeriesDTO.fromJson(Map<String, dynamic> json) :
        progress = json['progress'],
        losses = json['losses'],
        target = json['target'],
        wins = json['wins'];
}
