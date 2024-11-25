import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controllers/home/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../common/widgets/custom_shapes.dart';
import '../../../../../../../common/widgets/general_widgets.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.darkMode,
    required this.banner,
  });

  final bool darkMode;
  final List<String> banner;

  @override
  Widget build(BuildContext context) {

    final controller = HomeController.instance;

    return Column(
      children: [
        CarouselSlider(
          items: banner.map((url) => RoundedImage(imageUrl: url, applyImageRadius: true)).toList(),
          options: CarouselOptions(
              enlargeCenterPage: true,
              // autoPlay: true,
              viewportFraction: 1,
              aspectRatio: 2,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
        ),
        const SizedBox(height: FSizes.spaceBtwItems2),

        Center(
          child: Obx(
            () =>  Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i<5; i++)  CustomCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? (FColors.primary2) //darkMode ? FColors.primary : FColors.primary2
                      : FColors.grey,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}