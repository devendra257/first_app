import 'package:flutter/material.dart';

class ThemeProvider2 extends ChangeNotifier {
  bool isDark = false;

//* set this data
  void updateTheme(bool checkDark) {
    isDark = checkDark;
    notifyListeners();
  }

//* get this data
  bool getThemeData() {
    return isDark;
  }
}
