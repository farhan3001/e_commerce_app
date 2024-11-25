import 'package:e_commerce/common/widgets/custom_appbar.dart';
import 'package:e_commerce/common/widgets/general_widgets.dart';
import 'package:e_commerce/common/widgets/layouts.dart';
import 'package:e_commerce/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final darkMode = FHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIconContainer(
            isDarkMode: darkMode,
            icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),
            iconColor: darkMode ? FColors.white : FColors.black,
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: FSizes.spaceBtwItems),
          child: Column(
            children: [
              CustomGridLayout2(
                  isDarkMode: darkMode,
                  itemCount: 4,
                  itemBuilder: (_, index) => ProductCardVertical(
                      isDarkMode: darkMode,
                      sale: null,
                      imageUrl: FImages.jordan1,
                      productTitle: FText.jordan1Retro,
                      productPrice: 4000000,
                      brandTitle: 'Nike',
                      isFavorite: true,
                      favoriteOnTap: () {},
                      addToCart: () {},
                      isVerified: false
                  )
              )
            ],
          ),
        ),
      ),

    );
  }
}