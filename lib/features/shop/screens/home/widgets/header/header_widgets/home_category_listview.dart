import 'package:e_commerce/features/shop/controllers/home/home_controllers.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/constants/text_strings.dart';

class HomeCategoryListView extends StatelessWidget {
  const HomeCategoryListView({
    super.key, required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          /// Clothing
          HomeItemCategory(darkMode: darkMode, image: FImages.clothIcon, title: FText.clothing, leftPadding: FSizes.defaultSpace),

          /// Electronics
          HomeItemCategory(darkMode: darkMode, image: FImages.electronicsIcon, title: FText.electronics,),

          /// Body and Beauty
          HomeItemCategory(darkMode: darkMode, image: FImages.bodyCareAndBeauty, title: FText.bodyAndBeauty), //maxLines: 2

          /// Books
          HomeItemCategory(darkMode: darkMode, image: FImages.booksIcon, title: FText.books,),

          /// Groceries
          HomeItemCategory(darkMode: darkMode, image: FImages.groceriesIcon, title: FText.groceries,),

          /// House Hold
          HomeItemCategory(darkMode: darkMode, image: FImages.houseHold, title: FText.houseHold,),

          /// Sorts
          HomeItemCategory(darkMode: darkMode, image: FImages.sportIcon, title: FText.sports,),

          /// Animal
          HomeItemCategory(darkMode: darkMode, image: FImages.animalIcon, title: FText.animals,),

          /// Toys
          HomeItemCategory(darkMode: darkMode, image: FImages.toyIcon, title: FText.toys,),

          /// Furniture
          HomeItemCategory(darkMode: darkMode, image: FImages.furnitureIcon, title: FText.furniture,),

          /// Jewelry
          HomeItemCategory(darkMode: darkMode, image: FImages.jewelryIcon, title: FText.jewelry, rightPadding: FSizes.defaultSpace,),
        ],
      ),
    );
  }
}

class HomeItemCategory extends StatelessWidget {
  const HomeItemCategory({
    super.key,
    this. leftPadding= 0,
    this. rightPadding= FSizes.md,
    required this.image,
    required this.title,
    this.onItemTapped,
    this.maxLines = 1,
    required this.darkMode,
  });

  final bool darkMode;
  final int maxLines;
  final double leftPadding, rightPadding;
  final String image, title;
  final void Function()? onItemTapped;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(right: rightPadding, left: leftPadding),
      child: ItemCategoryContainer(
        darkMode: darkMode,
        backgroundColor: FColors.light, //dark ? FColors.dark :
        iconColor: FColors.black, //dark ? FColors.white :
        textColor: FColors.light,// darkMode ? FColors.black : FColors.light,// dark ? FColors.black : FColors.light, //FColors.white
        title: title,
        image: image,
        maxLines: maxLines,
        onTap: () => HomeController.instance.functionTapped(context, title),
      ),
    );
  }
}
