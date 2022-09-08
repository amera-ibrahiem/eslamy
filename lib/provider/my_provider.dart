import 'package:flutter/material.dart';

class MyProviderApp extends ChangeNotifier {
  String AppLanguage = 'en';

  void changeLanguage(String languageCode) {
    AppLanguage = languageCode;
    notifyListeners();
  }
}
