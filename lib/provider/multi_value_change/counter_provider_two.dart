import 'package:flutter/material.dart';

class MultiCountProvider extends ChangeNotifier {
  int _count = 0;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void decrementCount() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }

  int getCountValue() {
    return _count;
  }
}
