import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int counter = 0;

  int returnCounter() {
    return counter;
  }

  // 2 * counter + 1
  void counterUp() {
    counter = 2 * counter + 1;
    notifyListeners();
  }

  // 3 * counter - 1
  void counterDown() {
    counter = 3 * counter - 1;
    notifyListeners();
  }
}
