import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class FOutlinedButtonTheme {
  FOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: FColors.primary2),
      textStyle: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: FColors.primary2), //FColors.primary
          textStyle: const TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );
}