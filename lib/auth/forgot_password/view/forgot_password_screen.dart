import 'package:e_commerce_app/auth/forgot_password/widgets/forgot_pass_column_widget.dart';
import 'package:e_commerce_app/auth/sign_in/view/sign_in_screen.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(const SignInScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(KSizes.kDefaultSpace),
        child: ForgotPasswordColumnWidget(),
      ),
    );
  }
}
