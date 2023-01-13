import 'package:client/pages/home_page/diary_view/weight_manager_view/weight_manager_view.dart';
import 'package:flutter/material.dart';

import 'search_bar_view/search_bar_view.dart';

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
        SearchBarView(),
        WeightManagerView(),
      ],
    );
  }
}
