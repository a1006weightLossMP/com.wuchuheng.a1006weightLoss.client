import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  final bool isCheck;

  const ButtonView({Key? key, required bool this.isCheck}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    final buttonView = Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        '  选规格  ',
        style: TextStyle(color: Colors.white),
      ),
    );

    final buttonsView = SizedBox(
      width: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.remove_circle_outline, color: primaryColor),
          const Text('1'),
          Icon(Icons.add_circle_outline, color: primaryColor),
        ],
      ),
    );

    return isCheck ? buttonsView : buttonView;
  }
}
