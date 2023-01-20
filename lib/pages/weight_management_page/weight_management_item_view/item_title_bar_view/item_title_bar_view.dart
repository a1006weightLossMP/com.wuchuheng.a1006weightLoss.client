import 'package:flutter/material.dart';

class ItemTitleBarView extends StatelessWidget {
  final void Function() onTap;
  final double animationValue;

  final String name;
  final String unit;
  final double value;
  const ItemTitleBarView({
    Key? key,
    required this.onTap,
    required this.animationValue,
    required this.name,
    required this.unit,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(name),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(unit),
              ],
            ),
            RotationTransition(
              turns: AlwaysStoppedAnimation(90 * animationValue / 360),
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
