import 'package:client/components/common_app_bar/common_app_bar.dart';
import 'package:flutter/material.dart';

import '../../common/cookbook_view/cookbook_view.dart';

class MyCookBookPage extends StatelessWidget {
  const MyCookBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = '我的食谱';

    return Scaffold(
      appBar: commonAppBar(title: title),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: CookbookView(
          name: title,
          subtitle: '2020/1/20',
          items: [
            MealItemContainer(
              title: '早餐',
              foods: [
                FoodItemObj(
                  name: '牛肉',
                  image: "assets/images/weight_loss_program/beef.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '玉米',
                  image: "assets/images/weight_loss_program/corn.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '生菜',
                  image: "assets/images/weight_loss_program/lettuce.png",
                  value: 50,
                ),
              ],
            ),
            MealItemContainer(
              title: '午餐',
              foods: [
                FoodItemObj(
                  name: '牛奶',
                  image: "assets/images/weight_loss_program/milk.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '橘子',
                  image: "assets/images/weight_loss_program/oringe.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '黄桃',
                  image: "assets/images/weight_loss_program/peach.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '木瓜',
                  image: "assets/images/weight_loss_program/pumpkin.png",
                  value: 50,
                ),
              ],
            ),
            MealItemContainer(
              title: '晚餐',
              foods: [
                FoodItemObj(
                  name: '牛奶',
                  image: "assets/images/weight_loss_program/milk.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '橘子',
                  image: "assets/images/weight_loss_program/oringe.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '黄桃',
                  image: "assets/images/weight_loss_program/peach.png",
                  value: 50,
                ),
                FoodItemObj(
                  name: '木瓜',
                  image: "assets/images/weight_loss_program/pumpkin.png",
                  value: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
