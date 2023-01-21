import 'package:client/pages/weight_loss_program_page/weight_loss_program_common.dart';
import 'package:flutter/material.dart';

import '../../config/common_config.dart';

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

class FoodItemObj {
  final String name;
  final String image;
  final int value;

  FoodItemObj({required this.name, required this.image, required this.value});
}

class MealItemContainer extends StatelessWidget {
  final List<FoodItemObj> foods;
  final String title;
  const MealItemContainer({
    Key? key,
    required this.foods,
    required this.title,
  }) : super(key: key);

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
  final List<MealItemContainer> items;
  final String name;

  final String? subtitle;
  const CookbookView({
    Key? key,
    required this.name,
    required this.items,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: const EdgeInsets.all(paddingWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: const TextStyle(fontSize: 15)),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: TextStyle(
                    color: subtitleColor,
                  ),
                ),
            ],
          ),
          ...items.map((e) => e).toList(),
        ],
      ),
    );
  }
}
