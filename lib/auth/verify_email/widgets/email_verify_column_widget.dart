import 'package:e_commerce_app/auth/success_screen/view/email_success_screen.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifyColumnWidget extends StatelessWidget {
  const EmailVerifyColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Image
        Image(
          image: const AssetImage(
            KImageStrings.verifyEmailImage,
          ),
          width: KDeviceUtility.getScreenWidth(context) * 0.6,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwSec,
        ),

        /// Title
        Text(
          KTextStrings.verifyYourEmailAddress,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwItems,
        ),

        /// Sub Title
        Text(
          "roshanochu09@gmail.com",
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwItems,
        ),
        Text(
         KTextStrings.verifyEmailSubTitle,
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
              Get.to(const EmailSuccessScreen());
            },
            child: const Text(KTextStrings.continueText),
          ),
        ),
        const SizedBox(
          height: KSizes.kSpaceBtwItems,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            child: const Text(KTextStrings.resendEmail),
          ),
        ),
      ],
    );
  }
}
