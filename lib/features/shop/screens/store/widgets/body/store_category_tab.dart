import 'package:conditional_wrap/conditional_wrap.dart';
import 'package:e_commerce/common/widgets/general_widgets.dart';
import 'package:e_commerce/common/widgets/layouts.dart';
import 'package:e_commerce/common/widgets/text.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../utils/constants/sizes.dart';
import 'brand_showcase.dart';

class StoreCategoryTab extends StatelessWidget {
  const StoreCategoryTab({
    super.key,
    required this.darkMode,
    required this.images,
    required this.brandName,
    required this.brandIcon,
    this.productImages = const [],
    this.sale = const [],
    this.productTitle = const [],
    this.productPrice = const [],
    this.brandTitle = const [],
    this.isVerified = const [],
    required this.favoriteOnTap,
    required this.addToCart,
    this.itemCount = 0, required this.isBrandFeaturedVerified,
  });

  final bool darkMode, isBrandFeaturedVerified;
  final List<double> productPrice;
  final List<double?> sale;
  final List<String> images,
      productImages,
      productTitle,
      brandTitle;
  final List<bool> isVerified;
  final String brandName, brandIcon;
  final int itemCount;
  final void Function() favoriteOnTap, addToCart;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              BrandShowcase(
                darkMode: darkMode,
                images: images,
                isVerified: isBrandFeaturedVerified,
                brandName: brandName,
                iconSize: FSizes.iconSm,
                brandIcon: brandIcon,
              ),

              /// Products
              SectionHeading(
                title: 'You Might Like',
                darkMode: darkMode,
                onPressed: () {},
              ),
              const SizedBox(
                height: FSizes.spaceBtwItems,
              ),

              WidgetWrapper(
                wrapper: (child) {
                  return productImages.isNotEmpty
                      && productTitle.isNotEmpty && productPrice.isNotEmpty && brandTitle.isNotEmpty
                      ? child
                      : const SizedBox(
                      height: 300,
                      child: Center(child: Text('No Product Available')));
                },
                child: CustomGridLayout2(
                    withPadding: false,
                    isDarkMode: darkMode,
                    itemCount: itemCount,
                    itemBuilder: (_, index) => ProductCardVertical(
                        isDarkMode: darkMode,
                        isVerified: isVerified[index],
                        imageUrl: productImages[index],
                        sale: sale[index],
                        productTitle: productTitle[index],
                        productPrice: productPrice[index],
                        brandTitle: brandTitle[index],
                        favoriteOnTap: favoriteOnTap,
                        addToCart: addToCart)),
              )
            ],
          ),
        ),
      ],

    );
  }
}
