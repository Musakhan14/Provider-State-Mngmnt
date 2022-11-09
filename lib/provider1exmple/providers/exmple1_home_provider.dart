import 'package:flutter/cupertino.dart';

class Example1HomePageProvider with ChangeNotifier {
  bool? isEligilble;
  String eligibilityMessage = '';

  void checkEligibility(int age) {
    if (age >= 18) {
      isEligilble = true;
      eligibilityMessage = 'You are Eligible';
      notifyListeners();
    } else {
      isEligilble = false;
      eligibilityMessage = 'You are not Eligible';
      notifyListeners();
    }
  }
}
