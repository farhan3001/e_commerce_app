import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
    this.showBackArrow = false,
    this.paddingHorizontal = FSizes.defaultSpace,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.titleSpacing = 0,
    this.backgroundColor,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed
  });

  final bool showBackArrow;
  final double paddingHorizontal, paddingTop, paddingBottom, titleSpacing;
  final Widget? title;
  final IconData? leadingIcon;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: paddingHorizontal, right: paddingHorizontal, top: paddingTop, bottom: paddingBottom),
      child: AppBar(
        primary: true,
        titleSpacing: titleSpacing,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}
