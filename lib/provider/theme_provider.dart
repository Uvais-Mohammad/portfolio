import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark,
}

class ThemeProvider extends ChangeNotifier {
  ThemeType _themeType = ThemeType.dark;
  ThemeType get themeType => _themeType;
  set themeType(ThemeType themeType) {
    _themeType = themeType;
    notifyListeners();
  }
}
