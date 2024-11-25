import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shapes.dart';
import '../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../common/widgets/text.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import 'header_widgets/home_appbar.dart';
import 'header_widgets/home_category_listview.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key, required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {

    return CustomPrimaryHeaderContainer(
        dark: darkMode,
        child: Column(
          children: [

            /// App bar
            HomeAppBar(darkMode: darkMode),
            const SizedBox(height: FSizes.spaceBtwSections),

            /// Search bar
            SearchContainer(text: FText.searchBarHint, darkMode: darkMode),
            const SizedBox(height: FSizes.spaceBtwSections),

            /// Categories
            Padding(
              padding: const EdgeInsets.only(left: FSizes.defaultSpace),
              child: Column(
                children: [

                  /// Heading
                  SectionHeading(title: FText.popularCategories, showActionButton: false, textColor: FColors.white, darkMode: darkMode,), //darkMode ? FColors.black : FColors.white

                ],
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwSections2/1.5),

            /// Horizontal Scroll List View Categories
            HomeCategoryListView(darkMode: darkMode),

            const SizedBox(height: FSizes.spaceBtwSections),
          ],
        )
    );
  }
}