import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';

class KSocialButtonsWidget extends StatelessWidget {
  const KSocialButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? KColors.kwhite : KColors.kblack,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(KImageStrings.googleIconSample),
              width: KSizes.kMdIcon,
              height: KSizes.kMdIcon,
            ),
          ),
        ),
        const SizedBox(
          width: KSizes.kSpaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? KColors.kwhite : KColors.kblack,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(KImageStrings.faceBookIconSample),
              width: KSizes.kMdIcon,
              height: KSizes.kMdIcon,
            ),
          ),
        ),
      ],
    );
  }
}
