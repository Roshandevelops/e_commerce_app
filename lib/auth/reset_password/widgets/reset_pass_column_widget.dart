import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:flutter/material.dart';

class ResetPasswordColumnWidget extends StatelessWidget {
  const ResetPasswordColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Image
        Image.asset(
          width: KDeviceUtility.getScreenWidth(context) * 0.6,
          KImageStrings.verifyEmailImage,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),

        /// Title and Sub Title
        Text(
          "Password Reset Email Sent",
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwItems,
        ),
        Text(
          "roshanochu09@gmail.com",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),
        Text(
          textAlign: TextAlign.center,
          "Your account security is our policy!.We've sent you a secure link to safely change your password and keep your account protected",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),

        /// Buttons
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Done"),
          ),
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwItems,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            child: Text(
              KTextStrings.resendEmail,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}
