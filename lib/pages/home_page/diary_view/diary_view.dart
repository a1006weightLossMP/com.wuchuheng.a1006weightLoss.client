import 'package:flutter/material.dart';

import 'daily_calories_view/daily_calories_view.dart';

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
        // const SearchBarView(),
        // WeightManagerView(),
        const DailyCaloriesView(),
      ],
    );
  }
}
