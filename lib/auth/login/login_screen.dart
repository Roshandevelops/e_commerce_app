import 'package:e_commerce_app/utils/constants/k_colors.dart';
import 'package:e_commerce_app/utils/constants/k_image_strings.dart';
import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:e_commerce_app/utils/helpers/k_helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: KSizes.kAppBarHeight,
            bottom: KSizes.kDefaultSpace,
            left: KSizes.kDefaultSpace,
            right: KSizes.kDefaultSpace,
          ),
          child: Column(
            children: [
              /// App Logo and Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    height: 150,
                    dark
                        ? KImageStrings.demoLightLogo
                        : KImageStrings.demoDarkLogo,
                  ),
                  Text(
                    "Welcome back,",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: KSizes.kSm,
                  ),
                  Text(
                    "Discover Limitless Choices and Unmatched Covenience",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),

              /// Form Field section

              Form(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: KSizes.kSpaceBtwSec),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: "email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: KSizes.kSpaceBtwFields,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          labelText: "password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: KSizes.kSpaceBtwFields / 2,
                      ),

                      /// Remember me

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              Text("Remember Me"),
                            ],
                          ),

                          /// Forgot Password

                          TextButton(
                            onPressed: () {},
                            child: Text("forgot password?"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: KSizes.kSpaceBtwSec,
                      ),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Sign In"),
                        ),
                      ),
                      SizedBox(
                        height: KSizes.kSpaceBtwItems,
                      ),

                      /// Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Create Account"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Divider Section
              Row(
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
                    "or sign in with",
                    style: Theme.of(context).textTheme.labelMedium,
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
              ),

              /// Footer
            ],
          ),
        ),
      ),
    );
  }
}
