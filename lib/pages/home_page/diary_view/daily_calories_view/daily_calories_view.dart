import 'package:client/common/iconfont.dart';
import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_report_view/daily_calories_report_view.dart';
import 'package:flutter/material.dart';

import '../components/diary_card_container/diary_card_container.dart';
import 'daily_calories_title_view/daily_calories_title_view.dart';

class DailyCaloriesView extends StatelessWidget {
  const DailyCaloriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sidePadding = 20;
    return DiaryCardContainer(
      title: '每日热量',
      subtitleIconData: IconFont.icon_help,
      subtitleSize: 19,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints size) {
          return Container(
            width: size.maxWidth,
            color: Colors.white,
            padding: const EdgeInsets.only(
              left: sidePadding,
              right: sidePadding,
            ),
            child: Column(
              children: const [
                DailyCaloriesTitleView(),
                DailyCaloriesReportView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
