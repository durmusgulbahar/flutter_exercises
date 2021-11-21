import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData green = ThemeData(
    buttonTheme: ButtonThemeData(buttonColor: Colors.green),
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade50);

ThemeData red = ThemeData(
    buttonTheme: ButtonThemeData(buttonColor: Colors.red),
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red.shade50);

class ThemeColorData with ChangeNotifier {
  bool _isGreen = true;
  late SharedPreferences _spObj;

  bool get isGreen => _isGreen;

  ThemeData get themeColor => _isGreen ? green : red;

  void changeTheme() {
    _isGreen = !_isGreen;

    saveTheme(_isGreen);

    notifyListeners();
  }

  Future<void> createSharedPrefObj() async {
    _spObj = await SharedPreferences.getInstance();
  }

  void saveTheme(bool value) {
    _spObj.setBool("themeData", value);
  }

  void loadTheme() async {
    await createSharedPrefObj();

    _isGreen = _spObj.getBool("themeData") ?? true;
  }
}
