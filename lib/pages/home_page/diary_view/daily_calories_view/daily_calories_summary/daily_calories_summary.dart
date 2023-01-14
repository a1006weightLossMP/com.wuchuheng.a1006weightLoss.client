import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DailyCaloriesSummaryItemView extends StatelessWidget {
  final String title;
  final Color color;
  double size = 7;
  DailyCaloriesSummaryItemView({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(size)),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 5)),
        Text(title),
      ],
    );
  }
}

class DailyCaloriesSummary extends StatelessWidget {
  const DailyCaloriesSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('我的三大产能营养素配比:'),
        const Padding(padding: EdgeInsets.only(top: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DailyCaloriesSummaryItemView(
              title: '碳水化合物 50%',
              color: HexColor('#C49AF0'),
            ),
            DailyCaloriesSummaryItemView(
              title: '蛋白质 32%',
              color: HexColor('#F5BD81'),
            ),
            DailyCaloriesSummaryItemView(
              title: '脂肪 18%',
              color: HexColor('#F89395'),
            ),
          ],
        ),
      ],
    );
  }
}
