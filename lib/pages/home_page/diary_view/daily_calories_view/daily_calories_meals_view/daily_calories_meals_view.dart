import 'package:client/pages/home_page/diary_view/daily_calories_view/components/daily_calories_input_view/daily_calories_input_view.dart';
import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_common.dart';
import 'package:flutter/material.dart';

class DailyCaloriesMealItemView extends StatelessWidget {
  final String title;
  const DailyCaloriesMealItemView({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints size) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: subtitleFontSize)),
              const Padding(padding: EdgeInsets.only(top: 5)),
              Row(
                children: const [
                  DailyCaloriesInputView(),
                  Padding(padding: EdgeInsets.only(right: 2)),
                  Text('千卡'),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

class DailyCaloriesMealsView extends StatelessWidget {
  const DailyCaloriesMealsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: const [
        DailyCaloriesMealItemView(title: '早餐热量'),
        DailyCaloriesMealItemView(title: '午餐热量'),
        DailyCaloriesMealItemView(title: '晚餐热量'),
      ],
    );
  }
}
