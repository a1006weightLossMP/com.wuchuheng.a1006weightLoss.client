import 'package:flutter/material.dart';

class PointView extends StatelessWidget {
  const PointView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double size = 6;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }
}
