enum GameType {
  ranqued,
  pvp,
  casual,
}

class Scheduler {
  final GameType type;
  final String date;
  final String time;
  final String description;

  Scheduler({
    required this.type,
    required this.date,
    required this.time,
    required this.description,
  });
}
