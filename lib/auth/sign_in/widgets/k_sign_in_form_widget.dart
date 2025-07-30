import 'package:e_commerce_app/auth/forgot_password/view/forgot_password_screen.dart';
import 'package:e_commerce_app/auth/sign_up/view/sign_up_screen.dart';
import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:e_commerce_app/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class KLoginFormWidget extends StatelessWidget {
  const KLoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    /// Text Form Field
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSizes.kSpaceBtwSec),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: KTextStrings.emailText,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: KSizes.kSpaceBtwFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: KTextStrings.passwordText,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: KSizes.kSpaceBtwFields / 2,
            ),

            /// Remember me

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(
                      KTextStrings.rememberMeText,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),

                /// Forgot Password

                TextButton(
                  onPressed: () {
                    Get.to(ForgotPasswordScreen());
                  },
                  child: Text(
                    KTextStrings.forgotPasswordtext,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: KSizes.kSpaceBtwSec,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                  color: dark ? KColors.kblack : KColors.kwhite,
                )),
                onPressed: () {
                  Get.to(const BottomNavigationBarWidget());
                },
                child: const Text(KTextStrings.signInText),
              ),
            ),
            const SizedBox(
              height: KSizes.kSpaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side:
                      BorderSide(color: dark ? KColors.kwhite : KColors.kblack),
                ),
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: const Text(KTextStrings.createAccountText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
