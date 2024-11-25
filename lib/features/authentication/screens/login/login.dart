import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/widgets/dividers.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/headers_login.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/general_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = FHelperFunctions.isDarkMode(context);

    return Scaffold(
      body : SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: FSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Logo, Title, Sub-Title
                    FHeaderLogin(
                      image: dark ? FImages.darkAppLogo : FImages.lightAppLogo,
                      title: FText.loginTitle,
                      subTitle: FText.loginSubTitle,
                    ),

                    /// Form
                    const FLoginForm(),

                    /// Divider
                    Dividers(title:  FText.orSignInWith.capitalize!),
                    const SizedBox(height: FSizes.spaceBtwSections/2),

                    /// Footer
                     FooterButtons(
                        onPressedBtn1: () {},
                        onPressedBtn2: () {},
                        image1: FImages.google,
                        image2: FImages.facebook,
                    )
                  ],
                ),
              ),
            ],
          )
      )
    );
  }
}

