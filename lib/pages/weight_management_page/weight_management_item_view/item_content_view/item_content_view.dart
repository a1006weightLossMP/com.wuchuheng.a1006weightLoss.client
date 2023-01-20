import 'package:client/pages/weight_management_page/weight_management_item_view/item_content_view/weight_line_chart_view/weight_line_chart_view.dart';
import 'package:flutter/material.dart';

class ItemContentView extends StatelessWidget {
  final double animationValue;

  final String unit;
  const ItemContentView({
    Key? key,
    required this.animationValue,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 200 * animationValue;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        final double width = size.maxWidth;

        return SizedBox(
          height: height,
          width: width,
          child: SizedOverflowBox(
            size: Size(width, height),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                if (height > 0)
                  SizedBox(
                    height: 200,
                    width: width,
                    child: WeightLineChartView(name: unit),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
