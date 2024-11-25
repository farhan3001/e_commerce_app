import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: FSizes.appBarHeight,
    left: FSizes.defaultSpace,
    bottom: FSizes.defaultSpace,
    right: FSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingWithAppBarHeightVertical = EdgeInsets.only(
    top: FSizes.appBarHeight*2,
    bottom: FSizes.defaultSpace*2,
    left: FSizes.defaultSpace,
    right: FSizes.defaultSpace,
  );
}