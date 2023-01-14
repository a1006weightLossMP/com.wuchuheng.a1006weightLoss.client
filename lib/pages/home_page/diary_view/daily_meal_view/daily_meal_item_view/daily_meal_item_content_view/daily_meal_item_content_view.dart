import 'package:flutter/material.dart';

class FoodDataObj {
  final String name;
  final double weight;
  final String image;

  FoodDataObj({
    required this.name,
    required this.weight,
    required this.image,
  });
}

class DailyMealItemContentView extends StatefulWidget {
  bool isOpen;
  DailyMealItemContentView({
    Key? key,
    required this.isOpen,
  }) : super(key: key);

  @override
  State<DailyMealItemContentView> createState() =>
      _DailyMealItemContentViewState();
}

class _DailyMealItemContentViewState extends State<DailyMealItemContentView>
    with SingleTickerProviderStateMixin {
  final double height = 130;
  late AnimationController controller;
  late Animation animation;
  final double animateEnd = 1;
  final List<FoodDataObj> foodList = [
    FoodDataObj(name: '牛肉', weight: 10, image: "assets/images/food/beef.png"),
    FoodDataObj(name: '玉米', weight: 1, image: "assets/images/food/corn.png"),
    FoodDataObj(name: '生菜', weight: 1, image: "assets/images/food/lettuce.png"),
    FoodDataObj(name: '牛奶', weight: 1, image: "assets/images/food/milk.png"),
    FoodDataObj(name: '橘子', weight: 1, image: "assets/images/food/oringe.png"),
    FoodDataObj(name: '桃子', weight: 1, image: "assets/images/food/peach.png"),
    FoodDataObj(name: '木瓜', weight: 1, image: "assets/images/food/pumpkin.png"),
    FoodDataObj(name: '牛肉', weight: 10, image: "assets/images/food/beef.png"),
    FoodDataObj(name: '玉米', weight: 1, image: "assets/images/food/corn.png"),
    FoodDataObj(name: '生菜', weight: 1, image: "assets/images/food/lettuce.png"),
    FoodDataObj(name: '牛奶', weight: 1, image: "assets/images/food/milk.png"),
    FoodDataObj(name: '橘子', weight: 1, image: "assets/images/food/oringe.png"),
    FoodDataObj(name: '桃子', weight: 1, image: "assets/images/food/peach.png"),
    FoodDataObj(name: '木瓜', weight: 1, image: "assets/images/food/pumpkin.png"),
    FoodDataObj(name: '牛肉', weight: 10, image: "assets/images/food/beef.png"),
    FoodDataObj(name: '玉米', weight: 1, image: "assets/images/food/corn.png"),
    FoodDataObj(name: '生菜', weight: 1, image: "assets/images/food/lettuce.png"),
    FoodDataObj(name: '牛奶', weight: 1, image: "assets/images/food/milk.png"),
    FoodDataObj(name: '橘子', weight: 1, image: "assets/images/food/oringe.png"),
    FoodDataObj(name: '桃子', weight: 1, image: "assets/images/food/peach.png"),
    FoodDataObj(name: '木瓜', weight: 1, image: "assets/images/food/pumpkin.png"),
    FoodDataObj(name: '牛肉', weight: 10, image: "assets/images/food/beef.png"),
    FoodDataObj(name: '玉米', weight: 1, image: "assets/images/food/corn.png"),
    FoodDataObj(name: '生菜', weight: 1, image: "assets/images/food/lettuce.png"),
    FoodDataObj(name: '牛奶', weight: 1, image: "assets/images/food/milk.png"),
    FoodDataObj(name: '橘子', weight: 1, image: "assets/images/food/oringe.png"),
    FoodDataObj(name: '桃子', weight: 1, image: "assets/images/food/peach.png"),
    FoodDataObj(name: '木瓜', weight: 1, image: "assets/images/food/pumpkin.png"),
  ];

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(microseconds: 200000),
      vsync: this,
    );

    animation = Tween<double>(
      begin: 0,
      end: animateEnd,
    ).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );
  }

  @override
  void didUpdateWidget(DailyMealItemContentView oldWidget) {
    if (oldWidget.isOpen != widget.isOpen) {
      onChange();
    }

    super.didUpdateWidget(oldWidget);
  }

  void onChange() {
    if (controller.value == 0) {
      controller.forward(from: 0);
    }
    if (controller.value == 1) {
      controller.animateBack(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    const double heightRate = 0.65;
    const double imageSize = 40;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    Color primaryColor = Theme.of(context).primaryColor;

    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return SizedBox(
          height: height * animation.value,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints size) {
              final double bottomBarHeight = height * (1 - heightRate);
              return SizedOverflowBox(
                size: Size(size.maxWidth, size.maxHeight),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: height * heightRate,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0; i < foodList.length; i++)
                            Container(
                              margin: i + 1 != foodList.length
                                  ? const EdgeInsets.only(right: 10)
                                  : null,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    foodList[i].image,
                                    width: imageSize,
                                    height: imageSize,
                                  ),
                                  Text(foodList[i].name),
                                  Text(
                                    '${foodList[i].weight}千卡',
                                    style: TextStyle(
                                        color: subtitleColor, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: bottomBarHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('保存为食物',
                                  style: TextStyle(color: primaryColor)),
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text('继续添加',
                                  style: TextStyle(color: primaryColor)),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Center(
                              child: Text(
                                '去设置',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
