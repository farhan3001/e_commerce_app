import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

// ---------------------------------------1. Success Screen--------------------------------------- //

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    this.onPressedBtn,
    required this.image,
    required this.title,
    required this.subTitle
  });

  final VoidCallback? onPressedBtn;
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FSpacingStyle.paddingWithAppBarHeightVertical,
          child: Column(
            children: [
              Image(
                height: FHelperFunctions.screenHeight() * 0.25,
                image: AssetImage(image),
                width: FHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: FSizes.spaceBtwSections/2),

              // Title & Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: FSizes.spaceBtwSections),

              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: FSizes.spaceBtwSections*2),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressedBtn,
                    child: const Text(
                        FText.continueString
                    ),
                  )
              ),
              const SizedBox(height: FSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
