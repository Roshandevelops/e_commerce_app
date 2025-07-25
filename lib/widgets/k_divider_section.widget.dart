import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';

class KDividerSection extends StatelessWidget {
  const KDividerSection({super.key,required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Colors.grey : Colors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),
        Text(
       dividerText,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Flexible(
          child: Divider(
            
            color: dark ? Colors.grey : Colors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
