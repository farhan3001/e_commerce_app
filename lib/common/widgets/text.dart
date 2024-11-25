import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';

// ---------------------------------------1. Section Heading--------------------------------------- //

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = FText.viewAll,
    this.onPressed,
    required this.darkMode,
    this.fontSizeFactor = 0.95,
  });

  final Color? textColor;
  final bool showActionButton, darkMode;
  final String title, buttonTitle;
  final double fontSizeFactor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium!.apply(color: textColor, fontSizeFactor:fontSizeFactor),
          maxLines: 1,overflow:
        TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                  buttonTitle,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: FColors.primary2,//darkMode ? FColors.primary : FColors.primary2,
                      fontSizeFactor:0.9
                  )
              )
          )
      ],
    );
  }
}

// ---------------------------------------2. Product Title--------------------------------------- //

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.bodyMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

// ---------------------------------------3. Product Price--------------------------------------- //

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currencySign = 'Rp',
    required this.price,
    this.maxLines = 2,
    this.isLarge = false,
    this.discountedPrice,
  });

  final String currencySign, price;
  final String? discountedPrice;
  final int maxLines;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: FSizes.sm),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$currencySign$price,00',
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
                style: isLarge
                  ? TextStyle(fontSize: 16, decoration: discountedPrice != null ? TextDecoration.lineThrough : null, decorationColor: FColors.error, decorationThickness: 2.85)  ///Theme.of(context).textTheme.titleSmall!.apply(decoration: discountedPrice.isNotEmpty ? TextDecoration.lineThrough : null, decorationColor: FColors.error)
                  : TextStyle(fontSize: 14, decoration: discountedPrice != null  ? TextDecoration.lineThrough : null, decorationColor: FColors.error, decorationThickness: 2.85)
            ),


            Visibility(
              visible: discountedPrice != null ? true : false,
              child: Padding(
                padding: const EdgeInsets.only(left: FSizes.md),
                child: Text('Rp$discountedPrice,00',
                  maxLines: maxLines,
                  overflow: TextOverflow.ellipsis,
                  style: isLarge
                    ? Theme.of(context).textTheme.titleSmall!.apply(fontWeightDelta: 1, color: FColors.error)
                    : Theme.of(context).textTheme.bodyMedium!.apply(fontWeightDelta: 1, color: FColors.error),
                ),
              ),
            )
          ]
      ),
    );
  }
}

// ---------------------------------------2. Brand Title With Verified Icon--------------------------------------- //

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconSize = FSizes.sm,
    this.iconColor = FColors.primary,
    this.textAlign = TextAlign.center,
    this.textSize = TextSizes.small,
    this.mainAxisSize = MainAxisSize.min,
    this.fontWeightDelta = -1,
    this.fontSizeDelta = 1.25,
    required this.isVerified,
  });

  final String title;
  final int maxLines, fontWeightDelta;
  final double iconSize, fontSizeDelta;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes textSize;
  final bool isVerified;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: mainAxisSize,
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: BrandTitle(
            title: title,
            fontWeightDelta: fontWeightDelta,
            fontSizeDelta: fontSizeDelta,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: textSize,
          ),
        ),
        const SizedBox(width: FSizes.xs,),

        Visibility(
          visible: isVerified ? true : false,
          child: Icon(Iconsax.verify5, color: iconColor, size: iconSize,)
        )
      ],
    );
  }
}

// ---------------------------------------3. Brand Title--------------------------------------- //

class BrandTitle extends StatelessWidget {
  const BrandTitle({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 1,
    this.fontWeightDelta = 0,
    this.fontSizeDelta = 0,
    this.textAlign = TextAlign.start,
    this.brandTextSize = TextSizes.small
  });

  final Color? color;
  final String title;
  final int maxLines, fontWeightDelta;
  final double fontSizeDelta;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color, fontWeightDelta: fontWeightDelta, fontSizeDelta: fontSizeDelta)
              :  brandTextSize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color, fontWeightDelta: fontWeightDelta, fontSizeDelta: fontSizeDelta)
                    :  brandTextSize == TextSizes.large
                         ? Theme.of(context).textTheme.titleLarge!.apply(color: color, fontWeightDelta: fontWeightDelta, fontSizeDelta: fontSizeDelta)
                         : Theme.of(context).textTheme.bodyMedium!.apply(color: color, fontWeightDelta: fontWeightDelta, fontSizeDelta: fontSizeDelta)
    );
  }
}


