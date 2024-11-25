import 'package:e_commerce/common/widgets/custom_appbar.dart';
import 'package:e_commerce/common/widgets/dividers.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/general_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /// App Bar + Title
      appBar: CustomAppBar(
        paddingTop: 15,
        showBackArrow: true,
        paddingHorizontal: FSizes.defaultSpace-15,
        title: Text(FText.signUpTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.start,)),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: FSizes.defaultSpace),
          child: Container(
            transform: Matrix4.translationValues(0, -FSizes.defaultSpace*0.5, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Form
                const SizedBox(height: FSizes.spaceBtwSections),
                const SignUpForm(),
                const SizedBox(height: FSizes.spaceBtwSections2),

                /// Divider
                Dividers(title: FText.orSignUpWith.capitalize!),
                const SizedBox(height: FSizes.spaceBtwItems),

                /// Footer
                FooterButtons(
                  onPressedBtn1: () {},
                  onPressedBtn2: () {},
                  image1: FImages.google,
                  image2: FImages.facebook,
                ),
                const SizedBox(height: FSizes.spaceBtwSections2),
              ],
            ),
          )
        ),
      )
    );
  }
}

