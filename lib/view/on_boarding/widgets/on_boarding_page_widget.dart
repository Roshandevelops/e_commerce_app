import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.onBoardingImage,
    required this.onBoardingTitle,
    required this.onBoardingSubTitle,
  });

  final String onBoardingImage;
  final String onBoardingTitle;
  final String onBoardingSubTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSizes.kDefaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(onBoardingImage),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          Text(
            onBoardingTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: KSizes.kSpaceBtwItems,
          ),
          Text(
            onBoardingSubTitle,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
