import 'package:client/config/common_config.dart';
import 'package:client/pages/weight_loss_program_page/top_bar_view/top_bar_view.dart';
import 'package:flutter/material.dart';

import '../../common/cookbook_view/cookbook_view.dart';
import '../../components/common_app_bar/common_app_bar.dart';
import 'sport_style_view/sport_style_view.dart';

class WeightLossProgramPage extends StatelessWidget {
  const WeightLossProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget divider = Padding(
      padding: EdgeInsets.only(top: sideMargin),
    );
    return Scaffold(
      appBar: commonAppBar(
        title: '今日减重方案',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: sideMargin,
            top: sideMargin,
            right: sideMargin,
          ),
          child: Column(
            children: [
              TopBarView(),
              divider,
              CookbookView(
                name: '推荐食谱',
                items: [
                  MealItemContainer(
                    title: '早餐推荐',
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
                    title: '午餐推荐',
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
                    title: '晚餐推荐',
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
              divider,
              SportStyleView(),
            ],
          ),
        ),
      ),
    );
  }
}
