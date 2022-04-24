import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color.fromRGBO(12, 64, 166, 1),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Color.fromRGBO(255, 255, 255, 1),
          systemNavigationBarColor: Color.fromRGBO(12, 64, 166, 1),
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Roboto',
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromRGBO(12, 64, 166, 1),
      ),
    );
  }
}
