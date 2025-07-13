import 'package:e_commerce_app/controller/on_boarding_controller.dart';
import 'package:e_commerce_app/home_screen.dart';
import 'package:e_commerce_app/theme/k_app_theme.dart';
import 'package:e_commerce_app/view/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnBoardingProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: KAppTheme.lightTheme,
          darkTheme: KAppTheme.darkTheme,
          home: OnBoardingScreen()),
    );
  }
}
