import 'package:e_commerce_app/controller/on_boarding_controller.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_next_button_widget.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_skip_button.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_smooth_page_indicator_widget.dart';
import 'package:e_commerce_app/view/on_boarding/widgets/on_boarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller =
        // OnBoardingController.instance;
        Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages

          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
