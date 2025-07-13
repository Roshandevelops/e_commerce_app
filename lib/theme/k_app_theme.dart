import 'package:e_commerce_app/theme/custom_themes/k_appbar_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_bottom_sheet_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_checkbox_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_chip_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_elevated_button_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_outlined_button_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_text_form_field_theme.dart';
import 'package:e_commerce_app/theme/custom_themes/k_text_theme.dart';
import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:flutter/material.dart';

class KAppTheme {
  KAppTheme();

  /// App Light theme

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.light,
      primaryColor: Colors.yellow,
      scaffoldBackgroundColor: Colors.white,
      textTheme: KTextTheme.lightTextTheme,
      appBarTheme: KAppbarTheme.lightAppBarTheme,
      elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
      checkboxTheme: KCheckboxTheme.lightCheckBoxTheme,
      bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: KOutlinedButtonTheme.lightOutlindeBButtonTheme,
      chipTheme: KChipTheme.lightChipTheme);

  /// App Dark Theme

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.yellow,
      scaffoldBackgroundColor: KColors.kblack,
      textTheme: KTextTheme.darkTextTheme,
      appBarTheme: KAppbarTheme.darkAppBarTheme,
      elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
      checkboxTheme: KCheckboxTheme.darkCheckBoxTheme,
      bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: KOutlinedButtonTheme.darkOutlindeBButtonTheme,
      chipTheme: KChipTheme.darkChipTheme);
}
