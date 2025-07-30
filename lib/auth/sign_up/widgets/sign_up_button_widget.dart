import 'package:e_commerce_app/auth/verify_email/view/email_verify_screen.dart';
import 'package:e_commerce_app/utils/constants/k_text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.to(
            const EmailVerifyScreen(),
          );
        },
        child: const Text(KTextStrings.createAccountText),
      ),
    );
  }
}
