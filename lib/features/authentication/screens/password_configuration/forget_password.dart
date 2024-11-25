import 'package:e_commerce/common/widgets/custom_appbar.dart';
import 'package:e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// App bar + Headings
      appBar: CustomAppBar(
          showBackArrow: true,
          paddingTop: 15,
          paddingHorizontal: FSizes.sm,
          // backgroundColor: FColors.error,
          title: Text(FText.forgetPassword, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.start,) //, textAlign: TextAlign.center
      ),

      body: Padding(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Subtitle
            Text(FText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: FSizes.spaceBtwSections*1.5),

            /// Text Filed
            TextFormField(
              decoration: const InputDecoration(
                labelText: FText.email, prefixIcon: Icon(Iconsax.direct_right),
              )
            ),
            const SizedBox(height: FSizes.spaceBtwSections),

            /// Reset Pass Btn
            SizedBox(width: double.infinity, height: 55, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPasswordScreen()), child: const Text(FText.submit))),
            const SizedBox(height: FSizes.spaceBtwItems),

            // Image(
            //   // height: FHelperFunctions.screenHeight() * 0.2,
            //   image: const AssetImage(FImages.forgetPassword),
            //   width: FHelperFunctions.screenWidth() * 0.6,
            // ),
            // const SizedBox(height: FSizes.spaceBtwSections),


            // Submit Btn
          ],
        ),
      )

    );
  }
}
