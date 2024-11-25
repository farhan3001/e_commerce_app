import 'package:e_commerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';

import 'custom_theme/navbar_theme.dart';

class FAppTheme {
  FAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: FTextTheme.lightTextTheme,
    chipTheme: FChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: FAppBarTheme.lightAppBarTheme,
    checkboxTheme: FCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.lightBottomSheetTheme,
    navigationBarTheme: FNavigationBarTheme.lightNavigationBar,
    elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: FTextTheme.darkTextTheme,
    chipTheme: FChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: FAppBarTheme.darkAppBarTheme,
    checkboxTheme: FCheckboxTheme.darkCheckboxTheme,//darkCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.darkBottomSheetTheme,
    navigationBarTheme: FNavigationBarTheme.darkNavigationBar,
    elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme,//darkElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme, //darkOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.darkInputDecorationTheme,
  );
}