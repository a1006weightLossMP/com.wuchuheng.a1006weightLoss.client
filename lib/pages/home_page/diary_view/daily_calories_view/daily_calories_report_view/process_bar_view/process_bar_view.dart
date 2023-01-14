import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProcessBarView extends StatefulWidget {
  const ProcessBarView({Key? key}) : super(key: key);

  @override
  State<ProcessBarView> createState() => _ProcessBarViewState();
}

class _ProcessBarViewState extends State<ProcessBarView> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    Color? subTitleColor = Theme.of(context).textTheme.subtitle1?.color;
    const double width = 10;
    return Center(
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
                color: HexColor('#7AE8CE'),
              ),
              pointers: <GaugePointer>[
                RangePointer(
                  value: 60,
                  width: width,
                  color: primaryColor,
                  enableAnimation: true,
                  cornerStyle: CornerStyle.bothCurve,
                )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  widget: Transform.rotate(
                    angle: pi / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("300",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            )),
                        const Padding(padding: EdgeInsets.only(top: 5)),
                        Text(
                          '还可摄入热量',
                          style: TextStyle(color: subTitleColor, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
