import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../components/home_page_card_container/home_page_card_container.dart';

class GoodsItemObj {
  final String image;

  GoodsItemObj({required this.image});
}

class GoodsItemView extends StatelessWidget {
  final String image;
  GoodsItemView({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: SizedBox.fromSize(
            size: const Size(200, double.infinity),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('28天减肥产品', style: TextStyle(color: Colors.white)),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      '重塑健康',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Text(
                    '送半年VIP会员',
                    style: TextStyle(fontSize: 10, color: HexColor('#E37850')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeightLossGoods extends StatelessWidget {
  List<GoodsItemObj> goodsList = [
    GoodsItemObj(image: "assets/images/home_page/diary_view/goods/goods1.jpeg"),
    GoodsItemObj(image: "assets/images/home_page/diary_view/goods/goods2.jpeg"),
    GoodsItemObj(image: "assets/images/home_page/diary_view/goods/goods3.jpeg"),
    GoodsItemObj(image: "assets/images/home_page/diary_view/goods/goods4.jpeg"),
    GoodsItemObj(image: "assets/images/home_page/diary_view/goods/goods5.jpeg"),
  ];
  WeightLossGoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 160;
    return HomePageCardContainer(
      title: '减重方案产品',
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(13),
        height: height,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < goodsList.length; i++)
              Container(
                margin: i + 1 != goodsList.length
                    ? const EdgeInsets.only(right: 10)
                    : null,
                child: GoodsItemView(image: goodsList[i].image),
              ),
          ],
        ),
      ),
    );
  }
}
