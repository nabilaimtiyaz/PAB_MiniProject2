import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xFFE8F0EA),
      cardColor: const Color(0xFFD8DED3),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF6F8F79),
        foregroundColor: Colors.white,
      ),
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF2E4436),
      cardColor: const Color(0xFF3F5B46),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF3F5B46),
        foregroundColor: Colors.white,
      ),
    );
  }
}