import 'package:flutter/material.dart';

class DailyCaloriesInputView extends StatelessWidget {
  const DailyCaloriesInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).backgroundColor;

    return SizedBox(
      width: 70,
      height: 27,
      child: TextField(
        decoration: InputDecoration(
          hintText: '输入热量',
          hintStyle: const TextStyle(fontSize: 10),
          filled: true,
          fillColor: backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
