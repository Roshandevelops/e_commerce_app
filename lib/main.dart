import 'package:e_commerce_app/auth/verify_email/email_verify_screen.dart';
import 'package:e_commerce_app/theme/k_app_theme.dart';
import 'package:e_commerce_app/view/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
