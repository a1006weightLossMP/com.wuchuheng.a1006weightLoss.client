import 'package:flutter/material.dart';

import '../../components/home_page_card_container/home_page_card_container.dart';
import '../../home_page_common.dart';
import '../calories_view.dart';

class CaloriesFoodsItemsView extends StatelessWidget {
  const CaloriesFoodsItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageCardContainer(
      subtitle: '查看更多',
      title: "热量说明",
      child: Container(
        padding: const EdgeInsets.only(left: sideMargin, right: sideMargin),
        width: double.infinity,
        height: 170,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          childAspectRatio: (90 / 160),
          crossAxisSpacing: 8,
          children: const [
            CaloriesFoodItemView(
              name: '鸡蛋',
              weight: 100,
              calories: 100,
              image: "assets/images/home_page/calories_view/food1.jpeg",
            ),
            CaloriesFoodItemView(
              name: '火腿',
              weight: 100,
              calories: 100,
              image: "assets/images/home_page/calories_view/food2.jpeg",
            ),
            CaloriesFoodItemView(
              name: '米饭',
              weight: 100,
              calories: 100,
              image: "assets/images/home_page/calories_view/food3.jpeg",
            ),
            CaloriesFoodItemView(
              name: '牛奶',
              weight: 100,
              calories: 100,
              image: "assets/images/home_page/calories_view/food4.jpeg",
            ),
          ],
        ),
      ),
    );
  }
}
