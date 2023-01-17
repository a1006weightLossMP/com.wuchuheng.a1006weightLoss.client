import 'package:flutter/material.dart';

import 'calories_playing_view/calories_playing_view.dart';
import 'clories_foods_items_view/clories_foods_items_view.dart';

PreferredSizeWidget? caloriesAppbar() {
  return AppBar(
    centerTitle: true,
    title: const Text('热量', style: TextStyle(color: Colors.black)),
    backgroundColor: Colors.white,
  );
}

class CaloriesFoodItemView extends StatelessWidget {
  final String name;
  final double weight;
  final double calories;
  final String image;

  const CaloriesFoodItemView(
      {Key? key,
      required this.name,
      required this.weight,
      required this.calories,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        Color primaryColor = Theme.of(context).primaryColor;
        const double radius = 10;
        return Container(
          height: double.infinity,
          padding: const EdgeInsets.only(bottom: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(radius),
                  topLeft: Radius.circular(radius),
                ),
                child: SizedBox.fromSize(
                  size: Size(size.maxWidth, size.maxWidth),
                  child: Image.asset(
                    image,
                    width: size.maxWidth,
                    height: size.maxWidth,
                  ),
                ),
              ),
              Text(name),
              Text('${weight}g', style: TextStyle(fontSize: 10)),
              Text(
                '${weight}kcal',
                style: TextStyle(color: primaryColor, fontSize: 13),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CaloriesView extends StatelessWidget {
  const CaloriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CaloriesFoodsItemsView(),
        CaloriesPlayingView(),
      ],
    );
  }
}
