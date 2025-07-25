import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/widgets/k_divider_section.widget.dart';
import 'package:e_commerce_app/auth/sign_in/widgets/k_sign_in_form_widget.dart';
import 'package:e_commerce_app/auth/sign_in/widgets/k_sign_in_header_widget.dart';
import 'package:e_commerce_app/widgets/k_social_buttons_widget.dart';
import 'package:e_commerce_app/auth/sign_in/widgets/k_spacing_style_widget.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyleWidget.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// App Logo and Title
              KLoginHeaderWidget(),

              /// Form Field section
              KLoginFormWidget(),

              /// Divider Section
              KDividerSection(
                dividerText: KTextStrings.orSignInWithText,
              ),

              SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Footer
              KSocialButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
