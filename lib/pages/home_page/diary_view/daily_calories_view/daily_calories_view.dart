import 'package:client/common/iconfont.dart';
import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_meals_view/daily_calories_meals_view.dart';
import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_report_view/daily_calories_report_view.dart';
import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_summary/daily_calories_summary.dart';
import 'package:flutter/material.dart';

import '../components/diary_card_container/diary_card_container.dart';
import 'daily_calories_button_view/daily_calories_button_view.dart';
import 'daily_calories_title_view/daily_calories_title_view.dart';

class DailyCaloriesPaddingView extends StatelessWidget {
  final List<Widget> children;
  const DailyCaloriesPaddingView({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget padding = Padding(padding: EdgeInsets.only(top: 15));
    return Column(
      children: [
        for (int i = 0; i < children.length; i++)
          Column(
            children: [
              children[i],
              if (i != children.length - 1) padding,
            ],
          ),
      ],
    );
  }
}

class DailyCaloriesView extends StatelessWidget {
  const DailyCaloriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sidePadding = 20;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return DiaryCardContainer(
      title: '每日热量',
      subtitleIconData: IconFont.icon_help,
      subtitleSize: 19,
      subtitleIconColor: subtitleColor,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints size) {
          return Container(
            width: size.maxWidth,
            color: Colors.white,
            padding: const EdgeInsets.only(
              left: sidePadding,
              right: sidePadding,
              bottom: sidePadding,
            ),
            child: const DailyCaloriesPaddingView(
              children: [
                DailyCaloriesTitleView(),
                DailyCaloriesReportView(),
                DailyCaloriesMealsView(),
                DailyCaloriesSummary(),
                DailyCaloriesButtonView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
