import 'package:flutter/material.dart';

class MeAccountView extends StatelessWidget {
  const MeAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double fontSize = 18;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: const [
            Icon(
              Icons.settings,
              color: Colors.white,
              size: fontSize,
            ),
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              '账户设置',
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
              ),
            ),
          ],
        )
      ],
    );
  }
}
