import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/custom_appbar.dart';
import '../../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key, required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {

    return CustomAppBar(
      paddingTop: 10,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(FText.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: FColors.white)),//darkMode ? FColors.black : FColors.white)),
          Text(FText.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: FColors.white)),//darkMode ? FColors.black : FColors.white)),
        ],
      ),

      actions: [
        UserCartIcon(onPressed: () {}, cartIconColor: FColors.white)//darkMode ? FColors.black : FColors.white)
      ],
    );
  }
}