import 'package:e_commerce/features/shop/screens/home/widgets/body/home_body.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/header/home_header.dart';
import 'package:e_commerce/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/home_controllers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final darkMode = FHelperFunctions.isDarkMode(context);
    Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Header
            HomeHeader(darkMode: darkMode),

            /// Body
            HomeBody(darkMode: darkMode),
          ],
        ),
      )
    );
  }
}

