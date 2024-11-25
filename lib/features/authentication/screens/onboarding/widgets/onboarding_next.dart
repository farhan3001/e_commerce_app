import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Positioned(
      right: FSizes.defaultSpace,
      bottom: FDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: FColors.primary2,//dark ? FColors.primary : FColors.primary2,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}