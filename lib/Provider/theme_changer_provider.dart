import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  ////doing on get method
  // var _themeMode = ThemeMode.light;
  // ThemeMode get themeMode => _themeMode;

  // void setTheme(themeMode) {
  //   _themeMode = themeMode;
  //   notifyListeners();
  // }

  ///simple method
  var themeMode = ThemeMode.light;

  void setTheme(themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
  }
}
