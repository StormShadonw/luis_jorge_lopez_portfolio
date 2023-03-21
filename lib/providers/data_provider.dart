import 'package:flutter/cupertino.dart';

class DataProvider with ChangeNotifier {
  DateTime current = DateTime.now();
  late Stream timer;

  DataProvider.init() {
    Stream timer = Stream.periodic(Duration(seconds: 1), (i) {
      current = current.add(Duration(seconds: 1));
      return current;
    });

    timer.listen((data) {
      notifyListeners();
    });
  }
}
