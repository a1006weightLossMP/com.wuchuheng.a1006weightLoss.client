import 'package:client/pages/home_page/home_page_common.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../common/iconfont.dart';
import '../../components/home_page_card_container/home_page_card_container.dart';

class CaloriesPlayingItemView extends StatelessWidget {
  final String image;
  final String name;
  const CaloriesPlayingItemView(
      {Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double radius = 10;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        final double imageHeight = 275 / 370 * size.maxWidth;
        return Container(
          height: size.maxHeight,
          width: size.maxWidth,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(radius),
                  topLeft: Radius.circular(radius),
                ),
                child: SizedBox.fromSize(
                  size: Size(size.maxWidth, imageHeight),
                  child: Stack(
                    children: [
                      Image.asset(image),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('#F59977'),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(radius),
                              bottomLeft: Radius.circular(radius),
                            ),
                          ),
                          height: 25,
                          width: 50,
                          child: const Center(
                            child: Text("VIP",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      const Positioned(
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Icon(
                            IconFont.icon_play2,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '5分22秒',
                            style: TextStyle(color: subtitleColor),
                          ),
                          Text(
                            '500 观看',
                            style: TextStyle(color: subtitleColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CaloriesPlayingView extends StatelessWidget {
  const CaloriesPlayingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    final double axisSpacing = 10;
    return HomePageCardContainer(
      subtitle: "直播间",
      leftIconData: IconFont.icon_play,
      subtitleSize: 15,
      subtitleColor: primaryColor,
      isShowSubtitleIcon: false,
      title: "视频教程",
      child: Container(
        padding: EdgeInsets.only(left: sideMargin, right: sideMargin),
        height: 400 + axisSpacing,
        width: double.infinity,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: (90 / 100),
          crossAxisSpacing: axisSpacing,
          mainAxisSpacing: axisSpacing,
          crossAxisCount: 2,
          children: const [
            CaloriesPlayingItemView(
              image: "assets/images/home_page/calories_view/play1.jpeg",
              name: "燃脂训练",
            ),
            CaloriesPlayingItemView(
              image: "assets/images/home_page/calories_view/play2.jpeg",
              name: "燃脂训练",
            ),
            CaloriesPlayingItemView(
              image: "assets/images/home_page/calories_view/play3.jpeg",
              name: "燃脂训练",
            ),
            CaloriesPlayingItemView(
              image: "assets/images/home_page/calories_view/play4.jpeg",
              name: "燃脂训练",
            ),
          ],
        ),
      ),
    );
  }
}
