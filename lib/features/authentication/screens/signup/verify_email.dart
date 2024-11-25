import 'package:e_commerce/common/widgets/custom_appbar.dart';
import 'package:e_commerce/common/widgets/general_screen.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        paddingTop: 15,
        paddingHorizontal: FSizes.defaultSpace-10,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)
          )
        ],
      ),

      body: SingleChildScrollView(
        child:
          Padding(
            padding: const EdgeInsets.all(FSizes.defaultSpace),
            child: SizedBox(
              width: FHelperFunctions.screenWidth(),
              child: Column(
                // crossAxisAlignment: ,
                children: [
                  /// Image
                  Image(
                      height: FHelperFunctions.screenHeight() * 0.25,
                      image: const AssetImage(FImages.verifyEmailImage),
                      width: FHelperFunctions.screenWidth() * 0.6,
                  ),
                  const SizedBox(height: FSizes.spaceBtwSections/2),

                  /// Title & Subtitle
                  Text(FText.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                  const SizedBox(height: FSizes.spaceBtwSections),

                  Text('support@gmail.com', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
                  const SizedBox(height: FSizes.spaceBtwSections),

                  Text(FText.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                  const SizedBox(height: FSizes.spaceBtwSections),

                  /// Buttons
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => SuccessScreen(
                            onPressedBtn:  () => Get.offAll(() => const LoginScreen()),
                            image: FImages.success,
                            title: FText.yourAccountCreatedTitle,
                            subTitle: FText.yourAccountCreatedSubTitle,
                        ),),
                      child: const Text(
                          FText.continueString,
                      ),
                    )
                  ),
                  const SizedBox(height: FSizes.spaceBtwItems),

                  /// Resend Email
                  SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: (){},
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(text: FText.resendEmail, style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: FColors.primary2, //dark ? FColors.primary : FColors.primary2,
                              decoration: TextDecoration.underline,
                              decorationColor: FColors.primary2 //dark ? FColors.primary : FColors.primary2,
                            )),
                          ])
                        )
                      )
                  ),
                ],
              ),
            ),
          )
      ),

    );
  }
}
