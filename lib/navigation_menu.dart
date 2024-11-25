import 'package:e_commerce/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce/features/shop/screens/store/store_screen.dart';
import 'package:e_commerce/features/personalization/screens/profile/account_screen.dart';
import 'package:e_commerce/features/personalization/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(

      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,

          destinations:  const [
            NavigationDestination(
                icon: Icon(Iconsax.home),
                selectedIcon: Icon(Iconsax.home_15),
                label: "Home"
            ),
            NavigationDestination(
                icon: Icon(Iconsax.shop),
                selectedIcon: Icon(Iconsax.shop5),
                label: "Store",
            ),
            NavigationDestination(
                icon: Icon(Iconsax.heart),
                selectedIcon: Icon(Iconsax.heart5),
                label: "Wishlist"
            ),
            NavigationDestination(
                icon: Icon(Iconsax.profile_circle),
                selectedIcon: Icon(Iconsax.profile_circle5),
                label: "Account"
            ),
          ],

        ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const AccountScreen()
  ];
}
