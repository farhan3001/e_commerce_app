import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FHeaderLogin extends StatelessWidget {
  const FHeaderLogin({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
            height: 150,
            transform: Matrix4.translationValues(-FSizes.defaultSpace, 0, 0.0), //here
            child: Image(
              image: AssetImage(image),
            )),

        Text(title, style: Theme
            .of(context)
            .textTheme
            .headlineMedium
        ),
        const SizedBox(height: FSizes.sm),
        Text(subTitle, style: Theme
            .of(context)
            .textTheme
            .bodyMedium),
        ],
    );
  }
}
