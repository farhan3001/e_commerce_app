import 'package:e_commerce/features/personalization/screens/profile/widgets/child/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../common/widgets/custom_appbar.dart';
import '../../../../../../common/widgets/custom_shapes.dart';
import '../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return CustomPrimaryHeaderContainer(
      dark: isDarkMode,
      child: Column(
        children: [

          /// AppBar
          CustomAppBar(
            title: Text(
              "Account",
              style: Theme.of(context).textTheme.headlineMedium!.apply(color: FColors.white),
            ),
          ),

          const SizedBox(height: FSizes.spaceBtwSections2/2),

          /// User Profile Card
          ListTile(
            leading: CircularImages(
              image: FImages.user96,
              width: 50,
              height: 50,
              padding: 0,
              darkMode: isDarkMode,
            ),

            title: Text(
                "John Doe",
                style: Theme.of(context).textTheme.headlineSmall?.apply(
                  color: FColors.white,
                )
            ),

            subtitle: Text(
                "johndoe@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: FColors.white,
                )
            ),

            trailing: IconButton(
              onPressed: () => Get.to(() => ProfileScreen(isDarkMode: isDarkMode)),
              icon: const Icon(
                Iconsax.edit,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: FSizes.spaceBtwSections),
        ],
      ),
    );
  }
}