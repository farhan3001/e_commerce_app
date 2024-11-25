import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page_and_content.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          OnBoardingPageContent(controller: controller),

          const OnBoardingSkip(),

          const OnBoardingNavigation(),

          const OnBoardingNextButton()
        ],
      )
    );
  }
}