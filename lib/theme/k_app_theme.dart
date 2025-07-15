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
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: KTextTheme.lightTextTheme,
    appBarTheme: KAppbarTheme.lightAppBarTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: KCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlindeBButtonTheme,
    chipTheme: KChipTheme.lightChipTheme,
    // primaryTextTheme: TextTheme(
    //   displayLarge: TextStyle(fontSize: 96),
    //   displayMedium: TextStyle(fontSize: 60),
    //   displaySmall: TextStyle(fontSize: 48),
    //   headlineLarge: TextStyle(fontSize: 40),
    //   headlineMedium: TextStyle(fontSize: 34),
    //   headlineSmall: TextStyle(fontSize: 24),
    //   titleLarge: TextStyle(fontSize: 20),
    //   titleMedium: TextStyle(fontSize: 16),
    //   titleSmall: TextStyle(fontSize: 14),
    //   bodyLarge: TextStyle(fontSize: 16),
    //   bodyMedium: TextStyle(fontSize: 14),
    //   bodySmall: TextStyle(fontSize: 12),
    //   labelLarge: TextStyle(fontSize: 16),
    //   labelMedium: TextStyle(fontSize: 12),
    //   labelSmall: TextStyle(fontSize: 10),
    // ),
  );

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
    chipTheme: KChipTheme.darkChipTheme,
    // primaryTextTheme: TextTheme(
    //   displayLarge: TextStyle(fontSize: 96),
    //   displayMedium: TextStyle(fontSize: 60),
    //   displaySmall: TextStyle(fontSize: 48),
    //   headlineLarge: TextStyle(fontSize: 40),
    //   headlineMedium: TextStyle(fontSize: 34),
    //   headlineSmall: TextStyle(fontSize: 24),
    //   titleLarge: TextStyle(fontSize: 20),
    //   titleMedium: TextStyle(fontSize: 16),
    //   titleSmall: TextStyle(fontSize: 14),
    //   bodyLarge: TextStyle(fontSize: 16),
    //   bodyMedium: TextStyle(fontSize: 14),
    //   bodySmall: TextStyle(fontSize: 12),
    //   labelLarge: TextStyle(fontSize: 16),
    //   labelMedium: TextStyle(fontSize: 12),
    //   labelSmall: TextStyle(fontSize: 10),
    // ),
  );
}


/// Default Font sizes


/// | NAME           | SIZE |  WEIGHT |  SPACING |             |
/// |----------------|------|---------|----------|-------------|
/// | displayLarge   | 96.0 | light   | -1.5     |             |
/// | displayMedium  | 60.0 | light   | -0.5     |             |
/// | displaySmall   | 48.0 | regular |  0.0     |             |
/// | headlineMedium | 34.0 | regular |  0.25    |             |
/// | headlineSmall  | 24.0 | regular |  0.0     |             |
/// | titleLarge     | 20.0 | medium  |  0.15    |             |
/// | titleMedium    | 16.0 | regular |  0.15    |             |
/// | titleSmall     | 14.0 | medium  |  0.1     |             |
/// | bodyLarge      | 16.0 | regular |  0.5     |             |
/// | bodyMedium     | 14.0 | regular |  0.25    |             |
/// | bodySmall      | 12.0 | regular |  0.4     |             |
/// | labelLarge     | 14.0 | medium  |  1.25    |             |
/// | labelSmall     | 10.0 | regular |  1.5     |             |