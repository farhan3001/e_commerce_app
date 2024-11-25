import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../utils/constants/sizes.dart';

class CustomGridLayout extends StatelessWidget {
  const CustomGridLayout({
    super.key,
    required this.isDarkMode,
    required this.itemCount,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = FSizes.gridViewSpacing3,
    this.crossAxisSpacing = FSizes.gridViewSpacing2,
    this.mainAxisExtent = 313.4,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    required this.itemBuilder,
  });

  final bool isDarkMode;
  final int itemCount, crossAxisCount;
  final double mainAxisSpacing, crossAxisSpacing, mainAxisExtent;
  final double paddingHorizontal, paddingVertical;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),
      child: GridView.builder(
          itemCount: itemCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisExtent: mainAxisExtent,
            crossAxisCount: crossAxisCount,
          ),
          itemBuilder: itemBuilder

      ),
    );
  }
}

class CustomGridLayout2 extends StatelessWidget {
  const CustomGridLayout2({
    super.key,
    required this.isDarkMode,
    required this.itemCount,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = FSizes.gridViewSpacing3,
    this.crossAxisSpacing = FSizes.gridViewSpacing2,
    this.mainAxisExtent = 313.4,
    this.paddingHorizontal = 15,
    this.withPadding = true,
    this.paddingVertical = 0, required this.itemBuilder,
  });

  final bool isDarkMode, withPadding;
  final int itemCount, crossAxisCount;
  final double mainAxisSpacing, crossAxisSpacing, mainAxisExtent;
  final double paddingHorizontal, paddingVertical;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: withPadding ? EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical) : const EdgeInsets.all(0),
      child: MasonryGridView.count(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        itemBuilder: itemBuilder
      )
    );
  }
}
