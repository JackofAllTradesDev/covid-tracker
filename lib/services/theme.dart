import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData themeData;
  bool boolean;
  ThemeChanger(this.themeData);
  getTheme() => themeData;

  setTheme(ThemeData _themeData, bool set) {
    themeData = _themeData;
    boolean = set;
    notifyListeners();
  }
}
