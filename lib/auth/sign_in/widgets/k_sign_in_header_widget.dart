import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';

class KLoginHeaderWidget extends StatelessWidget {
  const KLoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          height: 100,
          dark ? KImageStrings.demoLightLogo : KImageStrings.demoDarkLogo,
        ),
        const SizedBox(
          height: KSizes.kSm,
        ),
        Text(
          KTextStrings.signInTitle1,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: KSizes.kSm,
        ),
        Text(
          KTextStrings.signInSubTitle1,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
