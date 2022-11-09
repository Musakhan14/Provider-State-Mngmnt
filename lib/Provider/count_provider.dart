import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier {
  // int count = 0;
  int _count = 0;
  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }
}
