import 'package:e_commerce/features/shop/screens/store/widgets/body/store_tab_contents.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/header/store_header.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/header/store_appbar.dart';

import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = FHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      // length: 11,
      length: 11,
      child: Scaffold(

        /// App Bar
        appBar: StoreAppBar(darkMode: darkMode),

        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              StoreHeader(darkMode: darkMode)
            ];
          },

          body: StoreTabContent(darkMode: darkMode),
        ),
      ),
    );
  }
}

