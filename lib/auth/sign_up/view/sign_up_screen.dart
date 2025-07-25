import 'package:e_commerce_app/auth/sign_up/widgets/sign_up_button_widget.dart';
import 'package:e_commerce_app/auth/sign_up/widgets/sign_up_checkbox_widget.dart';
import 'package:e_commerce_app/auth/sign_up/widgets/sign_up_form_widget.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/widgets/k_divider_section.widget.dart';
import 'package:e_commerce_app/widgets/k_social_buttons_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.kDefaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                KTextStrings.letsCreateYourAccount,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Text Form Fields
              const SignUpFormWidget(),

              const SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Check Box
              const SignUpCheckboxWidget(),

              const SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Sign Up Button
              const SignUpButtonWidget(),

              const SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Divider Section
              const KDividerSection(dividerText: KTextStrings.orSignUpWithText),

              const SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Social Buttons
              const KSocialButtonsWidget(),

              const SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
