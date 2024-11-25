import 'package:e_commerce/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../../../utils/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.isDarkMode});

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium!.apply(color: isDarkMode ? FColors.white : FColors.black),
        ),
      ),

      /// Body
      body: const SingleChildScrollView(

      ),
    );
  }
}
