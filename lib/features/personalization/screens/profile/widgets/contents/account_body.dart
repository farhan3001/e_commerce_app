import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../common/widgets/list_tile.dart';
import '../../../../../../common/widgets/text.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(FSizes.defaultSpace),
      child: Column(
        children: [

          /// Account Settings
          SectionHeading(
              title: "Account Settings",
              darkMode: isDarkMode,
              showActionButton: false,
              fontSizeFactor: 0.80
          ),
          const SizedBox(height: FSizes.spaceBtwItems),

          CustomListTile(
            icon: Iconsax.safe_home,
            title: "My Address",
            subTitle: "Set delivery address",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.shopping_cart,
            title: "My Cart",
            subTitle: "Add, remove, and move products to checkout",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.bag_tick,
            title: "My Orders",
            subTitle: "In-progress and completed orders",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.bank,
            title: "Bank Account",
            subTitle: "Withdraw balance to register bank account",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.discount_shape,
            title: "My Coupons",
            subTitle: "See all discount coupons",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.notification,
            title: "Notifications",
            subTitle: "Notification messages",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.security_card,
            title: "Account Privacy",
            subTitle: "Manage data usage and connected accounts",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          const SizedBox(height: FSizes.spaceBtwSections),

          /// App Settings
          SectionHeading(
              title: "App Settings",
              darkMode: isDarkMode,
              showActionButton: false,
              fontSizeFactor: 0.80
          ),
          const SizedBox(height: FSizes.spaceBtwItems),

          CustomListTile(
            icon: Iconsax.document_upload,
            title: "Load Data",
            subTitle: "Upload data to database",
            isDarkMode: isDarkMode,
            onTap: (){},
          ),

          CustomListTile(
            icon: Iconsax.location,
            title: "Geolocation",
            subTitle: "Set recommendation based on location",
            isDarkMode: isDarkMode,
            trailing: Switch(value: true, onChanged: (value){}),
          ),

          CustomListTile(
            icon: Iconsax.security_user,
            title: "Safe Mode",
            subTitle: "Search results are safe for all ages",
            isDarkMode: isDarkMode,
            trailing: Switch(value: false, onChanged: (value){}),
          ),

          CustomListTile(
            icon: Iconsax.image,
            title: "HD Image Quality",
            subTitle: "Set image quality",
            isDarkMode: isDarkMode,
            trailing: Switch(value: false, onChanged: (value){}),
          ),

          const SizedBox(height: FSizes.spaceBtwSections),

          /// Logout Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(

                onPressed: (){},
                child: Text(
                  'Logout',
                  style: TextStyle(color: isDarkMode ? FColors.white : FColors.black),
                )
            ),
          ),

          const SizedBox(height: FSizes.spaceBtwSections),

        ],
      ),
    );
  }
}