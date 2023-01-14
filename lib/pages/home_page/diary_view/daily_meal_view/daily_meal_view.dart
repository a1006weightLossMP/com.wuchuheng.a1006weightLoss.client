import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../common/iconfont.dart';
import '../components/diary_card_container/diary_card_container.dart';
import 'daily_meal_item_view/daily_meal_item_view.dart';

class DailyMealView extends StatelessWidget {
  const DailyMealView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DiaryCardContainer(
      title: '每日配餐',
      child: LayoutBuilder(
        builder: (BuildContext, BoxConstraints) {
          return Column(
            children: [
              DailyMealItemView(
                title: '早餐',
                iconData: IconFont.icon_breakfast,
                iconStartColor: HexColor('#ECB631'),
                iconEndColor: HexColor('#F45D35'),
              ),
              DailyMealItemView(
                title: '午餐',
                iconData: IconFont.icon_lunch,
                iconStartColor: HexColor('#F590A4'),
                iconEndColor: HexColor('#F23A79'),
              ),
              DailyMealItemView(
                title: '晚餐',
                iconData: IconFont.icon_dinner,
                iconStartColor: HexColor('#9DB5FB'),
                iconEndColor: HexColor('#5A87EB'),
              ),
              DailyMealItemView(
                title: '加餐',
                iconData: IconFont.icon_extraMeal,
                iconStartColor: HexColor('#53DA93'),
                iconEndColor: HexColor('#3BAC6D'),
              ),
            ],
          );
        },
      ),
    );
  }
}
