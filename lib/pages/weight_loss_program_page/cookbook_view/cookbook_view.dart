import 'package:flutter/material.dart';

import '../weight_loss_program_common.dart';

class FoodItemView extends StatelessWidget {
  final String name;
  final String image;
  final int value;
  const FoodItemView({
    Key? key,
    required this.name,
    required this.image,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    const double imageSize = 50;
    return SizedBox(
      width: imageSize + 10,
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(image, width: imageSize, height: imageSize),
              Text(name),
              Text(
                '$value千卡',
                style: TextStyle(color: subtitleColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MealItemObj {
  final String name;
  final String image;
  final int value;

  MealItemObj({required this.name, required this.image, required this.value});
}

class MealItemContainer extends StatelessWidget {
  final List<MealItemObj> foods;
  final String title;
  const MealItemContainer({Key? key, required this.foods, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black, fontSize: 15),
            text: title,
            children: [
              TextSpan(
                text: ' 建议2000千卡',
                style: TextStyle(color: subtitleColor, fontSize: 12),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              for (int i = 0; i < foods.length; i++)
                FoodItemView(
                  image: foods[i].image,
                  name: foods[i].name,
                  value: foods[i].value,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class CookbookView extends StatelessWidget {
  const CookbookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(paddingWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('今日食谱', style: TextStyle(fontSize: 15)),
          MealItemContainer(
            title: '早餐推荐',
            foods: [
              MealItemObj(
                name: '牛肉',
                image: "assets/images/weight_loss_program/beef.png",
                value: 50,
              ),
              MealItemObj(
                name: '玉米',
                image: "assets/images/weight_loss_program/corn.png",
                value: 50,
              ),
              MealItemObj(
                name: '生菜',
                image: "assets/images/weight_loss_program/lettuce.png",
                value: 50,
              ),
            ],
          ),
          MealItemContainer(
            title: '午餐推荐',
            foods: [
              MealItemObj(
                name: '牛奶',
                image: "assets/images/weight_loss_program/milk.png",
                value: 50,
              ),
              MealItemObj(
                name: '橘子',
                image: "assets/images/weight_loss_program/oringe.png",
                value: 50,
              ),
              MealItemObj(
                name: '黄桃',
                image: "assets/images/weight_loss_program/peach.png",
                value: 50,
              ),
              MealItemObj(
                name: '木瓜',
                image: "assets/images/weight_loss_program/pumpkin.png",
                value: 50,
              ),
            ],
          ),
          MealItemContainer(
            title: '晚餐推荐',
            foods: [
              MealItemObj(
                name: '牛奶',
                image: "assets/images/weight_loss_program/milk.png",
                value: 50,
              ),
              MealItemObj(
                name: '橘子',
                image: "assets/images/weight_loss_program/oringe.png",
                value: 50,
              ),
              MealItemObj(
                name: '黄桃',
                image: "assets/images/weight_loss_program/peach.png",
                value: 50,
              ),
              MealItemObj(
                name: '木瓜',
                image: "assets/images/weight_loss_program/pumpkin.png",
                value: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
