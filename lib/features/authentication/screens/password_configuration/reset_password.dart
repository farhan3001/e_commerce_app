import 'package:e_commerce/common/widgets/custom_appbar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final dark = FHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        paddingHorizontal: FSizes.defaultSpace-10,
        paddingTop: 15,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              height: FHelperFunctions.screenHeight() * 0.25,
              image: const AssetImage(FImages.emailSent),
              width: FHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: FSizes.spaceBtwSections/2),

            // Title & Subtitle
            Text(FText.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: FSizes.spaceBtwSections),

            Text(FText.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: FSizes.spaceBtwSections*2),

             // Done
             SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                      FText.done
                  ),
                ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems),

            // Resend Email
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
                            decorationColor: FColors.primary2, //dark ? FColors.primary : FColors.primary2,
                          )),
                        ])
                    )
                )
            ),
          ],
        )
      )
    );
  }
}
