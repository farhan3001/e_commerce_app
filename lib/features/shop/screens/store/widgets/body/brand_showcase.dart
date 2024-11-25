import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shapes.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../contents/brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.darkMode,
    required this.images,
    this.iconSize = FSizes.iconXs,
    required this.brandName,
    required this.brandIcon, required this.isVerified,
  });

  final bool darkMode, isVerified;
  final List<String> images;
  final double iconSize;
  final String brandName, brandIcon;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      showBorder: true,
      borderColor: FColors.darkGrey,
      padding: const EdgeInsets.all(FSizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: FSizes.spaceBtwItems),
      child: Column(
        children: [
          BrandCard(darkMode: darkMode,
            image: brandIcon,
            iconSize: iconSize,
            isVerified: isVerified,
            brandName: brandName,
            showBorder: false,
          ),
          const SizedBox(height: FSizes.spaceBtwItems,),

          Row(
            children: images.map((image) =>
                brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),

    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: CustomRoundedContainer(
        height: 100,
        backgroundColor: darkMode ? FColors.darkerGrey : FColors.light,
        margin: const EdgeInsets.only(right: FSizes.sm),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}