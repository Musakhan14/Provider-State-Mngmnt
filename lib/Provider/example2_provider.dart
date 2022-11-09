import 'package:flutter/cupertino.dart';

class Example2Provider with ChangeNotifier {
  double value = 1.0;
  // double get value => _value;

  void setValue(double val) {
    value = val;
    notifyListeners();
  }
}
