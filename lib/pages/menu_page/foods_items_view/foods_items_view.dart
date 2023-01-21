import 'package:client/pages/menu_page/foods_items_view/point_view/point_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'button_view/button_view.dart';

class ItemView extends StatelessWidget {
  const ItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 80;
    final double padding = 6;
    final double imageSize = height - padding * 2;
    final Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(padding),
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
              size: Size(imageSize, imageSize),
              child: Image.asset(
                'assets/images/menu_page/beef.png',
                width: imageSize,
                height: imageSize,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '牛奶',
                    children: [
                      TextSpan(
                        text: ' / 200克',
                        style: TextStyle(color: subtitleColor),
                      ),
                    ],
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Text(
                  '32Kcal',
                  style: TextStyle(
                    color: HexColor('#F6C897'),
                  ),
                ),
                Text(
                  '¥ 2',
                  style: TextStyle(
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
              ItemView(),
              ItemView(),
            ],
          ),
        ),
      ),
    );
  }
}
