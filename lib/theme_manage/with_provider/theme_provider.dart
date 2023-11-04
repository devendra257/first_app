import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDark = false;

  void updateTheme(bool isCheckDark) {
    isDark = isCheckDark;
    notifyListeners();
  }

//* Though Button
  // void changeTheme() {
  //   isDark = !isDark;
  //   notifyListeners();
  // }

  bool getThemebooleon() {
    return isDark;
  }
}
