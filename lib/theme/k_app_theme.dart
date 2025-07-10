import 'package:e_commerce_app/theme/k_text_theme.dart';
import 'package:flutter/material.dart';

class KAppTheme {
  KAppTheme();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.light,
    primaryColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.white,
    textTheme: KTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.black,
    textTheme: KTextTheme.darkTextTheme,
  );
}
