import 'package:flutter/material.dart';

import '../../../../../../utils/constants/image_strings.dart';
import 'store_category_tab.dart';

class StoreTabContent extends StatelessWidget {
  const StoreTabContent({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.jordan1, FImages.shirt, FImages.pants],
          brandName: 'Nike',
          brandIcon: FImages.clothIcon,
          favoriteOnTap: () {  },
          addToCart: () {  },
          itemCount: 3,
          productImages: const [FImages.jordan1, FImages.shirt, FImages.pants],
          sale: const [25, null, null],
          productTitle: const ['Air Jordan 1 Retro White', 'Black and White Stripes Shirt', 'Casual Pants'],
          productPrice: const [4000000, 750000, 600000],
          brandTitle: const ['Nike', 'Uniqlo', 'Uniqlo'],
          isVerified: const [true, true, true],
          isBrandFeaturedVerified: true,

        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.samsungS24, FImages.asusRog],
          brandName: 'Samsung',
          brandIcon: FImages.electronicsIcon,
          favoriteOnTap: () {  },
          addToCart: () {  },
          isBrandFeaturedVerified: true
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.shampoo, FImages.skinCare, FImages.waterBottle],
          isBrandFeaturedVerified: false,
          brandName: 'Bath and Body', brandIcon: FImages.bodyCareAndBeauty, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.book1, FImages.book1, FImages.book2],
          isBrandFeaturedVerified: false,
          brandName: 'Books and Shit', brandIcon: FImages.booksIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.nestea, FImages.oliveOil, FImages.waterBottle],
          isBrandFeaturedVerified: true,
          brandName: 'Hero', brandIcon: FImages.groceriesIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.blender, FImages.waterBottle, FImages.blender],
          isBrandFeaturedVerified: true,
          brandName: 'Ace Hardware', brandIcon: FImages.houseHold, favoriteOnTap: () {}, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.badmintonRacket, FImages.basketball, FImages.shirt],
          isBrandFeaturedVerified: true,
          brandName: 'Puma', brandIcon: FImages.sportIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.petFood, FImages.petHygiene, FImages.petFood],
          isBrandFeaturedVerified: true,
          brandName: 'Whiskas', brandIcon: FImages.animalIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.teddyBear, FImages.toyCar, FImages.teddyBear],
          isBrandFeaturedVerified: true,
          brandName: 'Toys R US', brandIcon: FImages.toyIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.bed, FImages.desk, FImages.chair],
          isBrandFeaturedVerified: true,
          brandName: 'IKEA', brandIcon: FImages.furnitureIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
        StoreCategoryTab(
          darkMode: darkMode,
          images: const [FImages.watch, FImages.ring, FImages.ring],
          isBrandFeaturedVerified: true,
          brandName: 'Omega', brandIcon: FImages.jewelryIcon, favoriteOnTap: () {  }, addToCart: () {  },
        ),
      ],
    );
  }
}
