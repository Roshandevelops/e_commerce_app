import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';

class SignUpCheckboxWidget extends StatelessWidget {
  const SignUpCheckboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return   Row(
                children: [
                  SizedBox(
                    width: KSizes.kDefaultSpace,
                    height: KSizes.kDefaultSpace,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    width: KSizes.kSpaceBtwItems,
                  ),

                  /// Privacy Policy Section

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "I agree to ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark
                                    ? KColors.kwhite
                                    : KColors.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "Terms of use",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark
                                    ? KColors.kwhite
                                    : KColors.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
  }
}