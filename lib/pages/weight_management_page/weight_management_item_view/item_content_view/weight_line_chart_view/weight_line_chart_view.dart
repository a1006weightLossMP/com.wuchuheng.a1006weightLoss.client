import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeightLineChartView extends StatelessWidget {
  final String name;
  const WeightLineChartView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;

    final List<ChartData> chartData = [
      ChartData(DateTime(2015, 1), 6),
      ChartData(DateTime(2016, 1), 20),
      ChartData(DateTime(2017, 1), 9),
      ChartData(DateTime(2018, 1), 31),
      ChartData(DateTime(2019, 1), 10),
    ];
    return Center(
      child: SfCartesianChart(
        title: ChartTitle(
          text: '参考范围: 12~25',
          alignment: ChartAlignment.near,
          textStyle: TextStyle(
            color: subtitleColor,
            fontSize: 14,
          ),
        ),
        primaryXAxis: DateTimeAxis(
            majorGridLines: const MajorGridLines(width: 0),
            dateFormat: DateFormat('MM/d')),
        primaryYAxis: NumericAxis(
          interval: 10,
        ),
        tooltipBehavior: TooltipBehavior(
          enable: true,
          format: 'point.y',
        ),
        series: <ChartSeries<ChartData, DateTime>>[
          // Renders line chart
          SplineSeries<ChartData, DateTime>(
            name: name,
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            enableTooltip: true,
            pointColorMapper: (ChartData data, _) => primaryColor,
            markerSettings: const MarkerSettings(isVisible: true),
            animationDuration: 2000,
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double y;
}
