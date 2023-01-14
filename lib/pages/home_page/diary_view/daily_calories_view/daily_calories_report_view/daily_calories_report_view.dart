import 'package:client/pages/home_page/diary_view/daily_calories_view/components/daily_calories_input_view/daily_calories_input_view.dart';
import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_report_view/process_bar_view/process_bar_view.dart';
import 'package:flutter/material.dart';

import '../daily_calories_common.dart';

class DailyCaloriesReportView extends StatelessWidget {
  const DailyCaloriesReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 140;
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                TitleIconView(
                  value: 1000,
                  subtitle: '正常所需',
                ),
                TitleIconView(
                  value: 870,
                  subtitle: '每日应摄入热量',
                ),
                InputView(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: height,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: const ProcessBarView(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                TitleIconView(
                  value: 1000,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  subtitle: '今日超标热量',
                ),
                TitleIconView(
                  value: 870,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  subtitle: '运动亏空热量',
                ),
                InputView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TitleIconView extends StatelessWidget {
  final int value;
  final String subtitle;

  final CrossAxisAlignment crossAxisAlignment;

  const TitleIconView({
    Key? key,
    required this.value,
    required this.subtitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          '$value千卡',
          style: const TextStyle(
            color: Colors.black,
            fontSize: subtitleFontSize,
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 3)),
        Text(
          subtitle,
          style: TextStyle(
            color: subtitleColor,
            fontSize: subtitleFontSize,
          ),
        ),
      ],
    );
  }
}

class InputView extends StatelessWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DailyCaloriesInputView(),
      ],
    );
  }
}
