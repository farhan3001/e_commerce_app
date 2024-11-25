import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.darkMode,
    required this.tabs,
  });

  final bool darkMode;

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: darkMode ? FColors.darkBlack : FColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: FColors.primary2, //darkMode ? FColors.primary : FColors.primary2,
        labelColor: FColors.primary2, //darkMode ? FColors.primary : FColors.primary2,
        unselectedLabelColor: darkMode ? FColors.grey : FColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}

