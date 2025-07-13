import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: KSizes.kDefaultSpace,
      top: KSizes.kAppBarHeight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
