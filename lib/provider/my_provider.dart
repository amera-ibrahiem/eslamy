import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProviderApp extends ChangeNotifier {
  String AppLanguage = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    AppLanguage = languageCode;
    prefs.setString('language', languageCode);
    notifyListeners();
  }

  void changeTheme(ThemeMode theme) async {
    final prefs = await SharedPreferences.getInstance();
    themeMode = theme;
    prefs.setString('Theme', theme == ThemeMode.light ? 'light' : 'dark');
    notifyListeners();
  }

  String getBackground() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/main_bg.png';
    } else {
      return 'assets/images/bg_dark.png';
    }
  }
}
