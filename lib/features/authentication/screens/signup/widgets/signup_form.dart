import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {

  bool? isChecked = false;
  bool obscuredTextPassword = true;
  bool obscuredTextPasswordConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                /// First Name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: FText.firstName),
                  ),
                ),
                const SizedBox(width: FSizes.spaceBtwInputFields),

                /// Last Name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: FText.lastName),
                  ),
                ),
              ],
            ),
            const SizedBox(height: FSizes.spaceBtwInputFields),

            /// Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user_edit), labelText: FText.username),
            ),
            const SizedBox(height: FSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.bookmark_2), labelText: FText.email),
            ),
            const SizedBox(height: FSizes.spaceBtwInputFields),


            /// Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.call), labelText: FText.phoneNo),
            ),
            const SizedBox(height: FSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: obscuredTextPassword,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: FText.password,
                  suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          obscuredTextPassword = !obscuredTextPassword;
                        });
                      },
                      child: obscuredTextPassword
                          ? const Icon(Iconsax.eye_slash)
                          : const Icon(Iconsax.eye)
                  )
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwInputFields),

            /// Confirm Password
            TextFormField(
              obscureText: obscuredTextPasswordConfirm,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: FText.confirmPassword,
                  suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          obscuredTextPasswordConfirm = !obscuredTextPasswordConfirm;
                        });
                      },
                      child: obscuredTextPasswordConfirm
                          ? const Icon(Iconsax.eye_slash)
                          : const Icon(Iconsax.eye)
                  )
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems),

            /// Terms and Condition Checkbox
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: FSizes.xs),

                Text.rich(
                    TextSpan(children: [
                      TextSpan(text: '${FText.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: FText.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: FColors.primary2,//dark ? FColors.primary : FColors.primary2,
                        decoration: TextDecoration.underline,
                        decorationColor: FColors.primary2//dark ? FColors.primary : FColors.primary2,
                      )),
                      TextSpan(text: ' ${FText.and} ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: FText.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: FColors.primary2, //dark ? FColors.primary : FColors.primary2,
                        decoration: TextDecoration.underline,
                        decorationColor: FColors.primary2 //dark ? FColors.primary : FColors.primary2,
                      )),
                    ])
                ),
              ],
            ),
            const SizedBox(height: FSizes.spaceBtwSections2),

            /// Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () { Get.to(() => const VerifyEmailScreen()); },
                child: const Text(FText.createAccount),
              ),
            ),
          ],
        )
    );
  }
}