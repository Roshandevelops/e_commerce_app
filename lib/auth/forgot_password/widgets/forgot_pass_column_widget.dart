import 'package:e_commerce_app/auth/reset_password/view/reset_password_screen.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordColumnWidget extends StatelessWidget {
  const ForgotPasswordColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Headings
        Text(
          "Forgot password",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: KSizes.kSpaceBtwItems),
        Text(
          "Dont worry ,Sometimes people can forget passords too.enter your email and we will send you a password reset link.",
       
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: KSizes.kSpaceBtwSec * 2),

        /// Text Field
        TextFormField(
          decoration: const InputDecoration(
            labelText: "E-mail",
            prefixIcon: Icon(Iconsax.direct_right),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),

        /// Sumbit Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.off(
                const ResetPasswordScreen(),
              );
            },
            child: const Text("Sumbit"),
          ),
        )
      ],
    );
  }
}
