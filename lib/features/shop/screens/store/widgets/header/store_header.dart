import 'package:e_commerce/features/shop/screens/store/widgets/header/store_tabbar.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../common/widgets/layouts.dart';
import '../../../../../../common/widgets/text.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../contents/brand_card.dart';

class StoreHeader extends StatelessWidget {
  const StoreHeader({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {


    /// Dummy Data
    final List<String> brandIcons = [FImages.clothIcon, FImages.booksIcon, FImages.electronicsIcon, FImages.bodyCareAndBeauty];
    final List<String> brandNames = ['Nike', 'Books and Shit', 'Samsung', 'Bath and Wash'];
    final List<String> subtitles = ['256 products', '57 products', '86 products', '539 products'];
    final List<bool> isVerified = [true, false, true, false];

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      floating: true,
      backgroundColor: darkMode ? FColors.darkBlack : FColors.white,
      expandedHeight: 440,

      flexibleSpace: Padding(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [

            /// Search Bar
            // const SizedBox(height: FSizes.spaceBtwItems,),
            SearchContainer(text: 'Search in Store',
              darkMode: darkMode,
              showBorder: true,
              withPadding: false,),
            const SizedBox(height: FSizes.spaceBtwSections,),

            /// Featured Brands
            SectionHeading(title: 'Featured Brands',
              onPressed: () {},
              buttonTitle: 'View All',
              darkMode: darkMode,
            ),
            const SizedBox(height: FSizes.spaceBtwItems / 1.5,),

            /// Brands Grid
            CustomGridLayout(
                isDarkMode: darkMode,
                itemCount: 4,
                mainAxisExtent: 80,
                paddingHorizontal: 0,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () {},
                      child: BrandCard(
                        textSize: TextSizes.medium,
                        darkMode: darkMode,
                        image: brandIcons[index],
                        brandName: brandNames[index],
                        subTitleText: subtitles[index],
                        isVerified: isVerified.isEmpty ? false : isVerified[index],
                      )
                  );
                }
            ),
          ],
        ),

      ),


      /// Tabs
      bottom: StoreTabBar(darkMode: darkMode),
    );
  }
}
