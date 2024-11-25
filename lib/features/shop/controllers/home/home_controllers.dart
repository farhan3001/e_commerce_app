import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final Rx<int> carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }

  void functionTapped(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void likeItem(BuildContext context, int position) {
    // Get the position of the card to like

    // Set the like icon color to red on first click,
    // and default color after another click


  }
}