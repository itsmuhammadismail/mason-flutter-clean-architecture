import 'package:flutter/material.dart';
import 'package:{{name}}/resources/colors.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      primaryColor: kPrimaryColor,
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Ubuntu',
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
