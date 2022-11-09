import 'package:flutter/cupertino.dart';

class FavouritItemProvider with ChangeNotifier {
  List<int> selectedItem = [];
  void addItem(int value) {
    selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    selectedItem.remove(value);
    notifyListeners();
  }
}
