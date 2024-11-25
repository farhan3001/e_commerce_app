import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

// ---------------------------------------1. Custom Curved Edges--------------------------------------- //

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final leftFirstCurve = Offset(0, size.height - 20);
    final leftLastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(leftFirstCurve.dx, leftFirstCurve.dy, leftLastCurve.dx, leftLastCurve.dy);

    final middleFirstCurve = Offset(0, size.height - 20);
    final middleLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(middleFirstCurve.dx, middleFirstCurve.dy, middleLastCurve.dx, middleLastCurve.dy);

    final rightFirstCurve = Offset(size.width, size.height - 20);
    final rightLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(rightFirstCurve.dx, rightFirstCurve.dy, rightLastCurve.dx, rightLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// ---------------------------------------2. Custom Circular Container--------------------------------------- //

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    required this.backgroundColor,
    this.margin,
  });

  final double? width, height;
  final double radius, padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor
      ),
      child: child,
    );
  }
}

// ---------------------------------------3. Custom Rounded Container--------------------------------------- //

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = FSizes.cardRadiusLg,
    this.backgroundColor = FColors.white,
    this.borderColor = FColors.borderPrimary,
  });

  final double radius;
  final Widget? child;
  final bool showBorder;
  final double? width, height;
  final Color backgroundColor, borderColor;
  final EdgeInsetsGeometry? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}

// ---------------------------------------4. Custom Primary Header Container--------------------------------------- //

class CustomPrimaryHeaderContainer extends StatelessWidget {
  const CustomPrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.dark,
    // this.height = 390,
  });

  final Widget child;
  final bool dark;
  // final double height;

  @override
  Widget build(BuildContext context) {

    return CurvedEdgesWidget(
      child: Container(
        color: FColors.primary2, ///dark ? FColors.primaryAlt : FColors.primary2,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          // height: height,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CustomCircularContainer(
                      backgroundColor: FColors.accent2.withOpacity(0.2) //textWhite.withOpacity(0.1)
                  )
              ),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CustomCircularContainer(
                      backgroundColor: FColors.accent2.withOpacity(0.2) //textWhite.withOpacity(0.1)
                  )
              ),
              Positioned(
                  top: 270,
                  right: -120,
                  height: 900,
                  width: 900,
                  child: CustomCircularContainer(
                      backgroundColor: FColors.accent2.withOpacity(0.2) //textWhite.withOpacity(0.1)
                  )
              ),
              Positioned(
                  height: 200,
                  width: 200,
                  top: -100,
                  right: 300,
                  child: CustomCircularContainer(
                      backgroundColor: FColors.accent2.withOpacity(0.2) //textWhite.withOpacity(0.1)
                  )
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

// --------------------------------------------------------------------------------------------------------//
