import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(FSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              image:  AssetImage(image),
              width: FHelperFunctions.screenWidth() * 0.8,
              height: FHelperFunctions.screenHeight() * 0.6,
          ),

          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: FSizes.spaceBtwItems),

          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class OnBoardingPageContent extends StatelessWidget {
  const OnBoardingPageContent({
    super.key, required this.controller,
  });

  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.updatePageIndicator,
      children: const [
        OnBoardingPage(
          image: FImages.onBoardingImage1,
          title: FText.onBoardingTitle1,
          subTitle: FText.onBoardingSubTitle1,
        ),

        OnBoardingPage(
          image: FImages.onBoardingImage2,
          title: FText.onBoardingTitle2,
          subTitle: FText.onBoardingSubTitle2,
        ),

        OnBoardingPage(
          image: FImages.onBoardingImage3,
          title: FText.onBoardingTitle3,
          subTitle: FText.onBoardingSubTitle3,
        ),

      ],
    );
  }
}