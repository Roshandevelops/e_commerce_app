import 'dart:developer';

import 'package:e_commerce_app/controller/on_boarding_controller.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = OnBoardingController.instance;
    return Positioned(
      right: KSizes.kDefaultSpace,
      top: KSizes.kAppBarHeight,
      child: TextButton(
        onPressed: () {
          controller.skipPage();
          log("Clicked skip button");
        },
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
