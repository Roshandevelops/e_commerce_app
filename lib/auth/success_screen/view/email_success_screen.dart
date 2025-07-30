import 'package:e_commerce_app/auth/sign_in/widgets/k_spacing_style_widget.dart';
import 'package:e_commerce_app/auth/success_screen/widgets/email_success_column_widget.dart';
import 'package:flutter/material.dart';

class EmailSuccessScreen extends StatelessWidget {
  const EmailSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyleWidget.paddingWithAppBarHeight * 2,
          child:const EmailSuccessColumnWidget()
        ),
      ),
    );
  }
}
