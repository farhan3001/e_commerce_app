import 'package:e_commerce/common/widgets/custom_shapes.dart';
import 'package:e_commerce/common/widgets/text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';
import '../styles/shadow.dart';

// ---------------------------------------1. Custom Search Container--------------------------------------- //

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    required this.darkMode,
    this.backgroundColor = FColors.light,
    this.withPadding = true,
  });

  final String text;
  final IconData? icon;
  final Color backgroundColor;
  final bool showBackground, showBorder, darkMode, withPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding
          ? const EdgeInsets.symmetric(horizontal: FSizes.defaultSpace)
          : const EdgeInsets.all(0),
      child: TextFormField(
        style: const TextStyle(color: FColors.darkerGrey),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: darkMode ? 1 : 0,
                color: darkMode ? FColors.darkGrey : Colors.transparent),
            borderRadius: BorderRadius.circular(FSizes.cardRadiusLg),
          ),
          // Set border for focused state
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: darkMode ? 1 : 0,
                color: darkMode ? FColors.darkGrey : Colors.transparent),
            borderRadius: BorderRadius.circular(FSizes.cardRadiusLg),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: showBackground ? backgroundColor : Colors.transparent,
          filled: true,
          prefixIcon: Icon(icon, color: FColors.darkerGrey),
          labelText: text,
          labelStyle: const TextStyle(color: FColors.darkerGrey),
        ),
      ),
    );
  }
}

// ---------------------------------------2. Item Category Container--------------------------------------- //

class ItemCategoryContainer extends StatelessWidget {
  const ItemCategoryContainer({
    super.key,
    required this.title,
    required this.image,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
    this.onTap,
    this.maxLines = 1,
    required this.darkMode,
  });

  final bool darkMode;
  final int maxLines;
  final String title, image;
  final Color? backgroundColor, iconColor, textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(FSizes.sm),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Image(
                  image: AssetImage(image), fit: BoxFit.fill, color: iconColor),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems / 2),
          SizedBox(
              width: 70,
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: textColor),
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }
}

// ---------------------------------------3. Circular Icon Container--------------------------------------- //

class CircularIconContainer extends StatelessWidget {
  const CircularIconContainer({
    super.key,
    required this.isDarkMode,
    this.width,
    this.height,
    this.iconSize = FSizes.lg,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onPressed,
  });

  final bool isDarkMode;
  final double? width, height, iconSize;
  final IconData icon;
  final Color? iconColor, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color:
              backgroundColor != null ? backgroundColor! : Colors.transparent,
          // color: Colors.transparent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: iconColor ?? FColors.darkerGrey, size: iconSize)));
  }
}

// ---------------------------------------4. Round Image Container--------------------------------------- //

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.fit = BoxFit.fill,
    this.isNetworkImage = false,
    this.applyImageRadius = false,
    this.borderRadius = FSizes.md,
    this.backgroundColor = FColors.white,
    required this.imageUrl,
    this.overlayColor,
  });

  final double? width, height;
  final double borderRadius;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor, overlayColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
              border: border,
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
              borderRadius: applyImageRadius
                  ? BorderRadius.circular(borderRadius)
                  : BorderRadius.zero,
              child: Image(
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
                fit: fit,
                color: overlayColor,
              ))),
    );
  }
}

// ---------------------------------------5. Circular Images--------------------------------------- //

class CircularImages extends StatelessWidget {
  const CircularImages({
    super.key,
    required this.darkMode,
    this.isNetworkImage = false,
    required this.image,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.width = 56,
    this.height = 56,
    this.padding = FSizes.sm,
  });

  final bool darkMode, isNetworkImage;
  final String image;
  final Color? overlayColor, backgroundColor;
  final BoxFit? fit;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (darkMode ? FColors.black : FColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}

// ---------------------------------------6. User Cart Icon--------------------------------------- //

class UserCartIcon extends StatelessWidget {
  const UserCartIcon({
    super.key,
    required this.cartIconColor,
    required this.onPressed,
  });

  final Color cartIconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: cartIconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: FColors.error, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text("2",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: FColors.white, fontSizeFactor: 0.9)),
            ),
          ),
        )
      ],
    );
  }
}

// ---------------------------------------7. Footer Buttons--------------------------------------- //

class FooterButtons extends StatelessWidget {
  const FooterButtons({
    super.key,
    this.onPressedBtn1,
    this.onPressedBtn2,
    required this.image1,
    required this.image2,
  });

  final VoidCallback? onPressedBtn1, onPressedBtn2;
  final String image1, image2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: FColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: onPressedBtn1,
            icon: Image(
              image: AssetImage(image1),
              width: FSizes.iconMd,
              height: FSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: FSizes.spaceBtwSections / 1.5),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: FColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: onPressedBtn2,
            icon: Image(
              image: AssetImage(image2),
              width: FSizes.iconMd,
              height: FSizes.iconMd,
            ),
          ),
        )
      ],
    );
  }
}

// ---------------------------------------8. Product Card--------------------------------------- //

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    required this.isDarkMode,
    this.imageUrl = '',
    this.sale,
    required this.productTitle,
    required this.productPrice,
    required this.brandTitle,
    required this.favoriteOnTap,
    required this.addToCart,
    required this.isVerified,
    this.thumbnailWidth = double.infinity,
    this.isFavorite = false,
  });

  final bool isDarkMode, isVerified, isFavorite;
  final double thumbnailWidth;
  final double productPrice;
  final double? sale;
  final String imageUrl,
      productTitle,
      brandTitle;
  final void Function() favoriteOnTap, addToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 355,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [FShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(FSizes.productImageRadius),
          color: isDarkMode ? FColors.darkerGrey : FColors.white),
      child: Column(
        children: [
          /// Thumbnail, Wish List, Discount Tag
          CustomRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(FSizes.sm),
            backgroundColor: FColors.grey,
            child: Stack(children: [
              /// Thumbnail
              RoundedImage(
                imageUrl: imageUrl,
                applyImageRadius: true,
                backgroundColor: Colors.transparent,
                width: thumbnailWidth,
              ),

              /// Sale tag
              Positioned(
                // top: 12,
                child: Visibility(
                  visible: sale !=null ? true : false,
                  child: CustomRoundedContainer(
                    radius: FSizes.sm,
                    padding: const EdgeInsets.symmetric(
                        vertical: FSizes.xs, horizontal: FSizes.sm),
                    backgroundColor: FColors.secondary.withOpacity(0.5),
                    child: Text('$sale%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: FColors.error)),
                  ),
                ),
              ),

              /// Favorite Icon
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: favoriteOnTap,
                  child: CircularIconContainer(
                    iconColor: isFavorite ? FColors.error : null,
                    width: 35,
                    height: 35,
                    isDarkMode: isDarkMode,
                    icon: Iconsax.heart5,
                    //iconSize: 19,
                  ),
                ),
              ),
              const SizedBox(height: FSizes.spaceBtwItems / 2),
            ]),
          ),
          const SizedBox(height: FSizes.spaceBtwItems / 2),

          /// Details
          Padding(
              padding: const EdgeInsets.only(left: FSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitle(title: productTitle, smallSize: false),
                  const SizedBox(height: FSizes.spaceBtwItems / 3),
                  BrandTitleWithVerifiedIcon(
                    title: brandTitle,
                    maxLines: 1,
                    mainAxisSize: MainAxisSize.max,
                    iconSize: FSizes.sm2,
                    isVerified: isVerified,
                  ),
                  const SizedBox(height: FSizes.spaceBtwItems / 2),
                  Padding(
                    padding: const EdgeInsets.only(right: FSizes.sm),
                    child: ProductPriceText(
                      isLarge: true,
                      price: productPrice.toStringAsFixed(productPrice.truncateToDouble() == productPrice ? 0 : 2),
                      discountedPrice: sale != null
                          ? (productPrice * sale! /100).toStringAsFixed(productPrice.truncateToDouble() == productPrice ? 0 : 2)
                          : null,
                      maxLines: 1,
                      // lineThrough: true,
                    ),
                  ),
                ],
              )),

          const Spacer(),

          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: addToCart,
              child: Container(
                width: FSizes.iconLg * 2,
                height: FSizes.iconLg * 1.2,
                decoration: BoxDecoration(
                    color: isDarkMode ? FColors.grey : FColors.dark,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(FSizes.productImageRadius),
                        bottomRight:
                            Radius.circular(FSizes.productImageRadius))),
                child: Icon(
                  Iconsax.add,
                  color: isDarkMode ? FColors.black : FColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// --------------------------------------------------------------------------------------------------------//
