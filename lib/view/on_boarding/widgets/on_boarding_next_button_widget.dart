import 'dart:developer';

import 'package:e_commerce_app/controller/on_boarding_controller.dart';
import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButtonWidget extends StatelessWidget {
  const OnBoardingNextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = OnBoardingController.instance;
    final dark = KHelperFunctions.isDarkMode(context);
    return Positioned(
      right: KSizes.kDefaultSpace,
      bottom: KDeviceUtility.getBottomNavigatBarHeight(context),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:const CircleBorder(),
            backgroundColor: dark ? KColors.primaryColor : KColors.kblack),
        onPressed: () {
          controller.nextPage();
          log("Clicked Next Button");
        },
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
