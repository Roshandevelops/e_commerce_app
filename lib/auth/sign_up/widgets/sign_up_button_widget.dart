import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(KTextStrings.createAccountText),
                ),
              );
  }
}