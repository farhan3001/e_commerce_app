import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shapes.dart';
import '../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../common/widgets/text.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/enums.dart';
import '../../../../../../utils/constants/sizes.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.darkMode,
    required this.image,
    required this.brandName,
    this.subTitleText = '',
    this.iconSize = FSizes.iconXs,
    this.textSize = TextSizes.large,
    this.withSubtitleText = true,
    this.showBorder = true, required this.isVerified,
  });

  final bool darkMode, withSubtitleText, showBorder;
  final bool? isVerified;
  final String image, brandName, subTitleText;
  final double iconSize;
  final TextSizes textSize;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: const EdgeInsets.all(FSizes.sm),
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      child: Row(
        children: [

          /// Icon
          CircularImages(
            isNetworkImage: false,
            width: 45,
            height: 45,
            darkMode: darkMode,
            // backgroundColor: Colors.transparent,
            image: image,
            overlayColor: darkMode ? FColors.white : FColors.black,
          ),
          const SizedBox(width: FSizes.spaceBtwItems/2,),

          /// Text
          Flexible(
            fit: FlexFit.tight,
            child: Column(

              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BrandTitleWithVerifiedIcon(
                  title: brandName,
                  textSize: textSize,
                  iconSize: iconSize,
                  isVerified: isVerified == null ? false : isVerified!,
                ),
                const SizedBox(height: FSizes.sm,),
            
                Visibility(
                  visible: subTitleText.isNotEmpty ? true : false,
                  child: Text(
                    subTitleText,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}