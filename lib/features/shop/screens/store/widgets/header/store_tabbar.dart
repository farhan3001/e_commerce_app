import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_tabbar.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../../utils/device/device_utility.dart';

class StoreTabBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreTabBar({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return CustomTabBar(
      darkMode: darkMode,
      tabs: const [
        Tab(
          child: Text(FText.clothing),),
        Tab(
          child: Text(FText.electronics),),
        Tab(
          child: Text(FText.bodyAndBeauty),),
        Tab(
          child: Text(FText.books),),
        Tab(
          child: Text(FText.groceries),),
        Tab(
          child: Text(FText.houseHold),),
        Tab(
          child: Text(FText.sports),),
        Tab(
          child: Text(FText.animals),),
        Tab(
          child: Text(FText.toys),),
        Tab(
          child: Text(FText.furniture),),
        Tab(
          child: Text(FText.jewelry),),
      ],);
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}