import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
  const Dividers({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? FColors.darkerGrey : FColors.dark, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(title, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? FColors.darkerGrey : FColors.dark, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}