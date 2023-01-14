import 'package:flutter/material.dart';

import 'daily_calories_view/daily_calories_view.dart';
import 'daily_meal_view/daily_meal_view.dart';
import 'search_bar_view/search_bar_view.dart';
import 'weight_manager_view/weight_manager_view.dart';

class DiaryView extends StatefulWidget {
  const DiaryView({Key? key}) : super(key: key);

  @override
  State<DiaryView> createState() => _DiaryViewState();
}

class _DiaryViewState extends State<DiaryView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBarView(),
        WeightManagerView(),
        const DailyCaloriesView(),
        const DailyMealView(),
      ],
    );
  }
}
