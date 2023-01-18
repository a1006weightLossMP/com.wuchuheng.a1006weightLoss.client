import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetailItemContainer extends StatelessWidget {
  final Widget child;
  const FoodDetailItemContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sideMargin = 10;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Container(
          color: Colors.white,
          width: size.maxWidth - sideMargin * 2,
          margin: const EdgeInsets.only(left: sideMargin, right: sideMargin),
          padding: const EdgeInsets.all(sideMargin),
          child: child,
        );
      },
    );
  }
}
