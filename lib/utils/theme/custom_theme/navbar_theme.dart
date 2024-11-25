import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class FNavigationBarTheme {
  FNavigationBarTheme._();

  static final lightNavigationBar = NavigationBarThemeData(
    backgroundColor: FColors.white,
    labelTextStyle: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return const TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w800,
          color: FColors.primary2,
        );
      }
      return const TextStyle(
        fontSize: 13.0,
        // fontWeight: FontWeight.w400,
        color: FColors.primary2,
      );
    }),
    iconTheme: MaterialStateProperty.all(const IconThemeData(color: FColors.primary2, size: 25)),
    indicatorColor: FColors.primary2.withOpacity(0.3),
    // indicatorShape: const CircleBorder(),
  );

  static final darkNavigationBar = NavigationBarThemeData(
      backgroundColor: FColors.darkBlack,
      labelTextStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w800,
            color: FColors.primary2, // FColors.primary,
          );
        }
        return const TextStyle(
          fontSize: 13.0,
          // fontWeight: FontWeight.w600,
          color: FColors.primary2, //FColors.primary,
        );
      }),
      iconTheme: MaterialStateProperty.all(const IconThemeData(color: FColors.primary2, size: 25)), //FColors.primary
      indicatorColor: FColors.primary2.withOpacity(0.3), //FColors.primary.withOpacity(0.3),
      // indicatorShape:
  );
}