import 'package:flutter/material.dart';

class CountControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void inCrease() {
    count++;
    notifyListeners();
  }
}
