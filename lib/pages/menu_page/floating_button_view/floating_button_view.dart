import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FloatingButtonView extends StatelessWidget {
  const FloatingButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sideMargin = 25;
    const double height = 60;
    const double iconSize = 40;
    const double sidePadding = 15;

    return Container(
      width: MediaQuery.of(context).size.width - sideMargin * 2,
      margin: const EdgeInsets.only(left: sideMargin, right: sideMargin),
      padding: const EdgeInsets.only(left: sidePadding, right: sidePadding),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height),
        color: HexColor('#663D42'),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: iconSize,
                child: Icon(
                  IconFont.icon_mbile_full,
                  color: HexColor('#8EB995'),
                  size: iconSize,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: '¥ ',
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(text: '10', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    const Text('满15免费配送',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          const Text('差¥2起送', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
