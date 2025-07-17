import 'package:e_commerce_app/utils/constants/k_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Iconsax.user),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                width: KSizes.kSpaceBtwFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: KSizes.kSpaceBtwFields,
          ),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: KSizes.kSpaceBtwFields,
          ),

          ///Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: "E-mail",
              prefixIcon: Icon(Iconsax.direct),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: KSizes.kSpaceBtwFields,
          ),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Iconsax.call),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: KSizes.kSpaceBtwFields,
          ),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
