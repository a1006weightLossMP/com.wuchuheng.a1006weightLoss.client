import 'package:client/components/layout/main_layout/main_layout.dart';
import 'package:client/pages/home_page/calories_view/calories_view.dart';
import 'package:client/pages/home_page/diary_view/diary_view.dart';
import 'package:flutter/material.dart';

import '../../common/iconfont.dart';
import '../../dto/data_obj/navigation_item_data_obj.dart';
import 'me_view/me_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 2;

  List<NavigationItemDataObj> navigationItems = [
    NavigationItemDataObj(
      iconData: IconFont.icon_diary,
      name: '日记',
      content: const DiaryView(),
    ),
    NavigationItemDataObj(
      iconData: IconFont.icon_report,
      name: '热量',
      appBar: caloriesAppbar,
      content: const CaloriesView(),
    ),
    NavigationItemDataObj(
      iconData: IconFont.icon_me,
      name: '我的',
      content: const MeView(),
    ),
  ];

  void onChange(int newItemIndex) {
    setState(() {
      activeIndex = newItemIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      activeIndex: activeIndex,
      navigationItems: navigationItems,
      onChange: onChange,
    );
  }
}
