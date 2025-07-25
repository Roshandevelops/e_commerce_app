import 'package:e_commerce_app/auth/sign_in/view/sign_in_screen.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailSuccessColumnWidget extends StatelessWidget {
  const EmailSuccessColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Image
        Image(
          image: const AssetImage(
            KImageStrings.emailSuccessImage,
          ),
          width: KDeviceUtility.getScreenWidth(context) * 0.6,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),

        /// Title
        Text(
          KTextStrings.yourAccountCreatedSuccessTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwItems,
        ),

        /// Sub Title
        Text(
          KTextStrings.yourAccountCreatedSuccessSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),

        /// Buttons
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(const SignInScreen());
            },
            child: const Text(KTextStrings.continueText),
          ),
        ),
      ],
    );
  }
}
