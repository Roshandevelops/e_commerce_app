import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/device/k_device_utility.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_next_button_widget.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_skip_button.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_smooth_page_indicator_widget.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages

          PageView(
            children: const [
              OnBoardingPageWidget(
                onBoardingImage: KImageStrings.onBoardingImage1,
                onBoardingTitle: KTextStrings.onBoardingTitle1,
                onBoardingSubTitle: KTextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPageWidget(
                onBoardingImage: KImageStrings.onBoardingImage2,
                onBoardingTitle: KTextStrings.onBoardingTitle2,
                onBoardingSubTitle: KTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPageWidget(
                onBoardingImage: KImageStrings.onBoardingImage3,
                onBoardingTitle: KTextStrings.onBoardingTitle3,
                onBoardingSubTitle: KTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button

          const OnBoardingSkipButton(),

          /// Dot Navigation SmoothPage Indicator

          const OnBoardingSmoothPageIndicatorWidget(),

          /// Next Button
          const OnBoardingNextButtonWidget(),
        ],
      ),
    );
  }
}
