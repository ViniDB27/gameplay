import 'package:flutter/cupertino.dart';
import 'package:gameplay/models/schedule.dart';
import 'package:gameplay/models/server.dart';
import 'package:gameplay/themes/app_images.dart';

class Rounds with ChangeNotifier {
  final List<Scheduler> _items = [
    Scheduler(
      type: GameType.ranqued,
      date: '18/02',
      time: '19:00',
      description: 'Jogando com os patos',
      server: Server(
        title: 'Lendários',
        subtitle: 'League of Legends',
        image: AppImages.lol,
      ),
    ),
  ];

  get schedules => [..._items];

  get countItems => _items.length;

  void addSchedule(Scheduler scheduler) {
    _items.insert(0, scheduler);
    notifyListeners();
  }
}
