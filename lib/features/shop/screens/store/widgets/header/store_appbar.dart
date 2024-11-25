import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_appbar.dart';
import '../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/device/device_utility.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget{
  const StoreAppBar({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      paddingTop: 10,
      //backgroundColor: darkMode ? FColors.black : FColors.white,
      title: Text('Store', style: Theme
          .of(context)
          .textTheme
          .headlineMedium,),
      actions: [
        UserCartIcon(onPressed: () {},
            cartIconColor: darkMode ? FColors.white : FColors.black)
      ],
    );
  }


  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}