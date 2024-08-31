import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String currentLanguge = "en";

  void changeCurrentLanguge(String newLanguge) {
    if (newLanguge == currentLanguge) return;
    currentLanguge == newLanguge;
    notifyListeners();
  }
}
