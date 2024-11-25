import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: FDeviceUtils.getAppBarHeight(),
      right: FSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child:
            Text (
              FText.skip,
              style: Theme.of(context).textTheme.bodyMedium!.apply(color: FColors.primary2)//dark ? FColors.primary : FColors.primary2),
            )
      ),
    );
  }
}