import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: FDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: FSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: const ExpandingDotsEffect(activeDotColor: FColors.primary2, dotHeight: 6), //dark ? FColors.primary : FColors.primary2
        )
    );
  }
}