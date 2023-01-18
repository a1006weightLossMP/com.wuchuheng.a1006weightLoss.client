import 'dart:math';

import 'package:client/pages/food_detail/components/food_detail_item_container/food_detail_item_container.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProcessView extends StatelessWidget {
  final Color color;
  final String name;
  final int value;
  const ProcessView({
    Key? key,
    required this.color,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double width = 6;
    const double size = 80;

    final Widget processBar = SizedBox(
      width: size,
      height: size,
      child: Transform.rotate(
        //旋转90度
        angle: -pi / 2,
        child: SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              interval: 10,
              startAngle: 0,
              endAngle: 360,
              showTicks: false,
              showLabels: false,
              axisLineStyle: AxisLineStyle(
                thickness: width,
                color: HexColor('#F4F4F5'),
              ),
              pointers: <GaugePointer>[
                RangePointer(
                  value: 20,
                  width: width,
                  color: color,
                  enableAnimation: true,
                  cornerStyle: CornerStyle.bothCurve,
                )
              ],
            ),
          ],
        ),
      ),
    );

    return Column(
      children: [
        processBar,
        const Padding(padding: EdgeInsets.only(top: 5)),
        Text(name),
        Text('$value%'),
      ],
    );
  }
}

class FoodAnalysingView extends StatelessWidget {
  const FoodAnalysingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FoodDetailItemContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('营养元素'),
              Text('单位: 每100克'),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProcessView(
                color: HexColor('#C4ACEC'),
                name: '碳水化合物',
                value: 50,
              ),
              ProcessView(
                color: HexColor('#F3C694'),
                name: '蛋白质',
                value: 32,
              ),
              ProcessView(
                color: HexColor('#F2A5A0'),
                name: '脂肪',
                value: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
