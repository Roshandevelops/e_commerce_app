import 'package:e_commerce_app/auth/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/auth/sign_in/widgets/k_sign_in_form_widget.dart';
import 'package:e_commerce_app/auth/sign_in/widgets/k_spacing_style_widget.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailSuccessScreen extends StatelessWidget {
  const EmailSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyleWidget.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(
                  KImageStrings.emailSuccessImage,
                ),
                width: KDeviceUtility.getScreenWidth(context) * 0.6,
              ),
              SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Title
              Text(
                "Your account successfully created!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: KSizes.kSpaceBtwItems,
              ),

              /// Sub Title

              Text(
                "congratulations.your account created. Continue to shop your dream",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(SignInScreen());
                  },
                  child: Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
