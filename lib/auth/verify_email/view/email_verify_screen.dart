import 'package:e_commerce_app/auth/sign_in/view/sign_in_screen.dart';
import 'package:e_commerce_app/auth/verify_email/widgets/email_verify_column_widget.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifyScreen extends StatelessWidget {
  const EmailVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(const SignInScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.kDefaultSpace),
          child: EmailVerifyColumnWidget(),
        ),
      ),
    );
  }
}
