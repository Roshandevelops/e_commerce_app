import 'package:e_commerce_app/auth/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/auth/success_screen/email_success_screen.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifyScreen extends StatelessWidget {
  const EmailVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(const SignInScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.kDefaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(
                  KImageStrings.verifyEmailImage,
                ),
                width: KDeviceUtility.getScreenWidth(context) * 0.6,
              ),
              SizedBox(
                height: KSizes.kSpaceBtwSec,
              ),

              /// Title
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: KSizes.kSpaceBtwItems,
              ),

              /// Sub Title

              Text(
                "roshanochu09@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: KSizes.kSpaceBtwItems,
              ),
              Text(
                "congratulations.your account Awaits.verify your email to start shopping ",
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
                    Get.to(EmailSuccessScreen());
                  },
                  child: Text("Continue"),
                ),
              ),
              SizedBox(
                height: KSizes.kSpaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
