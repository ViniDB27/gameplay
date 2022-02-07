import 'package:gameplay/models/server.dart';

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
  final Server server;

  Scheduler({
    required this.type,
    required this.date,
    required this.time,
    required this.description,
    required this.server,
  });
}
