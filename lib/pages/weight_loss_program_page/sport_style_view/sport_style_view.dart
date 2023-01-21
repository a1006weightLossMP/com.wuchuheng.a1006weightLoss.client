import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../config/common_config.dart';

class CookbookItemView extends StatelessWidget {
  final String image;
  final String title;
  const CookbookItemView({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    const double radius = 4;
    const double imageSize = 100;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(
                '109分钟',
                style: TextStyle(
                  color: subtitleColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: imageSize,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 2), // Shadow positi
              ),
            ],
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(radius),
                    child: SizedBox.fromSize(
                      size: const Size(imageSize, imageSize),
                      child: Image.asset(
                        image,
                        width: imageSize,
                        height: imageSize,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: HexColor('#ECBA80'),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(radius),
                          bottomLeft: Radius.circular(radius),
                        ),
                      ),
                      child: const Text(
                        'VIP',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '燃脂训练',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Text('10分22秒', style: TextStyle(color: subtitleColor)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      margin: const EdgeInsets.only(right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '立即查看',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SportStyleView extends StatelessWidget {
  const SportStyleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Container(
          padding: const EdgeInsets.all(paddingWidth),
          width: size.maxWidth,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  '运动方式',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const CookbookItemView(
                image: "assets/images/weight_loss_program/play1.jpeg",
                title: '高强度运动',
              ),
              const CookbookItemView(
                image: "assets/images/weight_loss_program/play2.jpeg",
                title: '中强度运动',
              ),
              const CookbookItemView(
                image: "assets/images/weight_loss_program/play3.jpeg",
                title: '低强度运动',
              ),
            ],
          ),
        );
      },
    );
  }
}
