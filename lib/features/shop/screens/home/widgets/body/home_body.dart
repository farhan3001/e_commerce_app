import 'package:e_commerce/common/widgets/general_widgets.dart';
import 'package:e_commerce/common/widgets/text.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/body/sections/promo_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/layouts.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {

    /// Dummy Data
    final List<String> productImages = [FImages.jordan1, FImages.basketball, FImages.book1, FImages.samsungS24, FImages.shampoo];
    final List<String> productTitles = ['Jordan 1 Retro White', 'Puma Basketball', 'Sprint Solve Big Problems and test New Ideas in Just 5 Days', 'Samsung Galaxy S24', 'All in 1 Shampoo'];
    final List<String> brandNames = ['Nike', 'Puma', 'Books and Shit', 'Samsung', 'Bath and Wash'];
    final List<double?> sales = [25, 75, null, 35, null];
    final List<double> price = [4000000, 500000, 150000, 15000000, 200000];
    final List<bool> isVerified = [true, true, false, true, false];

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: FSizes.defaultSpace),
        child: Column(
          children: [

            /// Promo Slider
            PromoSlider(
              darkMode: darkMode,
              banner: const [
                FImages.banner1,
                FImages.banner2,
                FImages.banner3,
                FImages.banner4,
                FImages.banner5
              ],
            ),
            const SizedBox(height: FSizes.spaceBtwSections,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: FSizes.defaultSpace),
              child: SectionHeading(title: 'Popular Products', onPressed: (){}, buttonTitle: 'View All', darkMode: darkMode,),
            ),
            // const SizedBox(height: FSizes.spaceBtwItems/4,),

            /// Popular Products
            CustomGridLayout2(
              isDarkMode: darkMode,
              itemCount: 5,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {},
                  child: ProductCardVertical(
                    isDarkMode: darkMode,

                    isVerified: isVerified[index],
                    imageUrl: productImages[index],
                    sale: sales[index],
                    productTitle: productTitles[index],
                    productPrice: price[index],
                    brandTitle: brandNames[index],
                    favoriteOnTap: () {},
                    addToCart: () {},

                  )
                );
              }
            )
          ],
        )
    );
  }
}