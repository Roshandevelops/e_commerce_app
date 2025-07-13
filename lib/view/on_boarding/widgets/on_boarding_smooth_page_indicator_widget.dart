import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothPageIndicatorWidget extends StatelessWidget {
  const OnBoardingSmoothPageIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Positioned(
      left: KSizes.kDefaultSpace,
      bottom: KDeviceUtility.getBottomNavigatBarHeight(context) + 25,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? KColors.kwhite : KColors.kAppDarkColor,
          dotHeight: 6,
        ),
      ),
    );
  }
}
