import 'package:client/pages/menu_page/foods_items_view/point_view/point_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'button_view/button_view.dart';

class ItemView extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final double calories;
  final double weight;
  const ItemView({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.calories,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 80;
    const double padding = 6;
    const double imageSize = height - padding * 2;
    final Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: height,
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox.fromSize(
              size: const Size(imageSize, imageSize),
              child: Image.asset(
                image,
                width: imageSize,
                height: imageSize,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: name,
                    children: [
                      TextSpan(
                        text: ' / $weight克',
                        style: TextStyle(color: subtitleColor),
                      ),
                    ],
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                Text(
                  '${calories}Kcal',
                  style: TextStyle(
                    color: HexColor('#F6C897'),
                  ),
                ),
                Text(
                  '¥ $price',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                PointView(),
                ButtonView(isCheck: false),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FoodsItemsView extends StatelessWidget {
  const FoodsItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ItemView(
                name: '牛肉',
                weight: 200,
                calories: 32,
                price: 2,
                image: 'assets/images/menu_page/beef.png',
              ),
              ItemView(
                name: '玉米',
                weight: 200,
                calories: 32,
                price: 2,
                image: 'assets/images/menu_page/corn.png',
              ),
              ItemView(
                name: '牛奶',
                weight: 200,
                calories: 32,
                price: 2,
                image: 'assets/images/menu_page/milk.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
