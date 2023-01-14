import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DailyCaloriesTitleView extends StatelessWidget {
  const DailyCaloriesTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    double btnWidth = 180;
    return SizedBox(
      width: btnWidth,
      child: ClipPath(
        clipper: TrapezoidPath(),
        child: Container(
          width: btnWidth,
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor('#43E091'),
                primaryColor,
              ],
            ),
          ),
          child: const Text(
            '减肥目标 10Kg',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class TrapezoidPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 5;
    double offset = 10;

    Path path = Path()
      ..lineTo(size.width - radius, 0)
      ..arcTo(
        Rect.fromPoints(
          Offset(size.width - radius, 0),
          Offset(
            size.width,
            radius,
          ),
        ), // Rect
        1.5 * pi, // Start engle
        0.5 * pi, // Sweep engle
        true,
      ) // direction clockwise
      ..lineTo(size.width - offset, size.height - radius)
      ..arcTo(
        Rect.fromPoints(
          Offset(size.width - offset, size.height - radius),
          Offset(size.width - offset - radius, size.height),
        ),
        .5,
        0.5 * pi,
        false,
      )
      ..lineTo(radius + offset, size.height)
      ..arcTo(
        Rect.fromPoints(
          Offset(radius + offset, size.height),
          Offset(offset, size.height - radius),
        ),
        0.5 * pi,
        0.5 * pi,
        false,
      )
      ..lineTo(0, radius)
      ..arcTo(
        Rect.fromPoints(
          Offset(0, radius),
          Offset(
            radius,
            0,
          ),
        ), // Rect
        1 * pi,
        0.5 * pi,
        false,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
