import 'package:client/config/common_config.dart';
import 'package:client/route/route.dart';
import 'package:flutter/material.dart';

class ResultItemObj {
  final String name;
  final String subtitle;
  final String image;

  ResultItemObj({
    required this.name,
    required this.subtitle,
    required this.image,
  });
}

class ResultItemView extends StatelessWidget {
  final String name;
  final String subtitle;
  final String image;
  final void Function() onTap;

  const ResultItemView({
    Key? key,
    required this.name,
    required this.subtitle,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: size.maxWidth,
            height: size.maxHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(image),
                    Container(
                      height: size.maxHeight,
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            subtitle,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child:
                      const Text('查看详情', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SearchingResultView extends StatelessWidget {
  List<ResultItemObj> items = [
    ResultItemObj(
      name: '鸡蛋',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food1.jpeg",
    ),
    ResultItemObj(
      name: '火腿肠',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food2.jpeg",
    ),
    ResultItemObj(
      name: '米饭',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food3.jpeg",
    ),
    ResultItemObj(
      name: '牛奶',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food4.jpeg",
    ),
    ResultItemObj(
      name: '鸡蛋',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food1.jpeg",
    ),
    ResultItemObj(
      name: '火腿肠',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food2.jpeg",
    ),
    ResultItemObj(
      name: '米饭',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food3.jpeg",
    ),
    ResultItemObj(
      name: '牛奶',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food4.jpeg",
    ),
    ResultItemObj(
      name: '鸡蛋',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food1.jpeg",
    ),
    ResultItemObj(
      name: '火腿肠',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food2.jpeg",
    ),
    ResultItemObj(
      name: '米饭',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food3.jpeg",
    ),
    ResultItemObj(
      name: '牛奶',
      subtitle: '32千卡/100克',
      image: "assets/images/home_page/calories_view/food4.jpeg",
    ),
  ];

  SearchingResultView({Key? key}) : super(key: key);

  void onTap(int index, BuildContext context) {
    Navigator.pushNamed(context, foodDetailRouteName);
  }

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        double width = size.maxWidth - sideMargin * 2;
        return Container(
          width: width,
          margin: const EdgeInsets.only(
            left: sideMargin,
            right: sideMargin,
          ),
          child: ListView(
            children: [
              for (int i = 0; i < items.length; i++)
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: width,
                  height: 60,
                  child: ResultItemView(
                    onTap: () => onTap(i, context),
                    image: items[i].image,
                    name: items[i].name,
                    subtitle: items[i].subtitle,
                  ),
                ),
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                width: width,
                child: Text(
                  '-- 我也是有底线的 ---',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: subtitleColor,
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
