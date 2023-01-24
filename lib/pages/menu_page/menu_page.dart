import 'package:client/components/common_app_bar/common_app_bar.dart';
import 'package:client/pages/menu_page/floating_button_view/floating_button_view.dart';
import 'package:client/pages/menu_page/foods_items_view/foods_items_view.dart';
import 'package:client/pages/menu_page/vip_view/vip_view.dart';
import 'package:flutter/material.dart';

import 'categories_view/categories_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> categories = [
    '碳水',
    '蛋白质',
    '脂肪',
    '水果',
    '蔬菜',
    '油脂类',
    '饮品类',
    '碳水',
    '蛋白质',
    '脂肪',
    '水果',
    '蔬菜',
    '油脂类',
    '饮品类',
    '蛋白质',
    '脂肪',
    '水果',
    '蔬菜',
    '油脂类',
    '饮品类',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    const double topBarHeight = 65;

    return Scaffold(
      appBar: commonAppBar(title: '早餐'),
      body: Stack(
        children: [
          Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: topBarHeight),
                child: const VipView(),
              ),
              Builder(
                builder: (BuildContext context) {
                  final bodyHeight = MediaQuery.of(context).size.height -
                      Scaffold.of(context).appBarMaxHeight!;
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: bodyHeight - topBarHeight,
                    ),
                    child: Row(
                      children: [
                        CategoriesView(
                          activeIndex: activeIndex,
                          categories: categories,
                          onChange: (newActiveIndex) => setState(
                            () => activeIndex = newActiveIndex,
                          ),
                        ),
                        const FoodsItemsView(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          const Positioned(bottom: 20, left: 0, child: FloatingButtonView())
        ],
      ),
    );
  }
}
