import 'package:e_commerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class FLoginForm extends StatefulWidget {
  const FLoginForm({super.key});

  @override
  State<FLoginForm> createState() => _FLoginFormState();
}

class _FLoginFormState extends State<FLoginForm> {

  bool? isChecked = false;
  bool obscuredText = true;

  @override
  Widget build(BuildContext context) {
    return Form (
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:  FSizes.spaceBtwSections),
          child: Column(
            children: [

              /// Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.bookmark_2),
                    labelText: FText.email
                ),
              ),
              const SizedBox(height: FSizes.spaceBtwInputFields),

              /// Password
              TextFormField(
                obscureText: obscuredText,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: FText.password,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          obscuredText = !obscuredText;
                        });
                      },
                      child: obscuredText
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Iconsax.eye)
                    )
                ),
              ),
              const SizedBox(height: FSizes.spaceBtwInputFields/2),

              /// Remember Me and Forget Password
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Remember Me
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: FSizes.xs),
                        const Text(FText.rememberMe),
                      ],
                    ),

                    /// Forget Password
                    TextButton(
                        onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                        child: const Text(FText.forgetPassword, style: TextStyle(color: FColors.primary2))) // darkMode ? FColors.primary : FColors.primary2
                  ]
              ),
              const SizedBox(height: FSizes.spaceBtwSections),

              /// Sign In Btn
              SizedBox(width: double.infinity, height: 55, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(FText.signIn))),
              const SizedBox(height: FSizes.spaceBtwItems),

              /// Sign Up Btn
              SizedBox(width: double.infinity, height: 55, child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(FText.createAccount))),
              const SizedBox(height: FSizes.spaceBtwSections/5),
            ],
          ),
        )
    );
  }
}
