import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.titleColor,
    this.subTitleColor,
    required this.isDarkMode,
    this.size = 28,
    this.onTap
  });

  final IconData icon;
  final double size;
  final String title, subTitle;
  final Widget? trailing;
  final Color? titleColor, subTitleColor;
  final bool isDarkMode;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: size, color: FColors.primary2),
      title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.apply(
            color: titleColor ?? (isDarkMode ? FColors.white : FColors.black),
          )
      ),
      subtitle: Text(
          subTitle,
          style: Theme.of(context).textTheme.labelMedium?.apply(
            color: subTitleColor ?? (isDarkMode ? FColors.white : FColors.black),
          )
      ),
      trailing: trailing,

      onTap: onTap,
    );
  }
}
