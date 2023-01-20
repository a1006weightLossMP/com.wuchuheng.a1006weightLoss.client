import 'package:client/pages/weight_management_page/weight_management_item_view/item_content_view/item_content_view.dart';
import 'package:client/pages/weight_management_page/weight_management_item_view/item_title_bar_view/item_title_bar_view.dart';
import 'package:flutter/material.dart';

class WeightManagementItemView extends StatefulWidget {
  final String name;
  final String unit;
  final double value;
  const WeightManagementItemView(
      {Key? key, required this.name, required this.unit, required this.value})
      : super(key: key);

  @override
  State<WeightManagementItemView> createState() =>
      _WeightManagementItemViewState();
}

class _WeightManagementItemViewState extends State<WeightManagementItemView>
    with SingleTickerProviderStateMixin {
  double height = 300;
  late AnimationController controller;
  late Animation animation;
  final double animateEnd = 1;

  void onTap() {
    if (controller.value == 0) controller.forward(from: 0); // 正向播放
    if (controller.value == 1) controller.animateBack(0); // 反向播放
  }

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
      CurvedAnimation(
        parent: controller,
        curve: Curves.linear, // 线性播放
      ),
    );
    controller.forward(from: 0);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Container(
          width: size.maxWidth,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget? child) {
              return Column(
                children: [
                  ItemTitleBarView(
                    onTap: onTap,
                    animationValue: animation.value,
                    name: widget.name,
                    unit: widget.unit,
                    value: widget.value,
                  ),
                  ItemContentView(
                    animationValue: animation.value,
                    unit: widget.unit,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
