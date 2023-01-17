import 'package:flutter/material.dart';

import '../../../../components/card_container/card_container.dart';
import '../../../../config/common_config.dart';
import 'data_obj.dart';

class WeightManagerView extends StatelessWidget {
  List<WeightManagerItemObj> items = [
    WeightManagerItemObj(value: 52, unit: 'Kg', name: '当前体重'),
    WeightManagerItemObj(value: 162, unit: 'cm', name: '当前身高'),
    WeightManagerItemObj(value: 198, unit: '正常', name: 'BMI'),
    WeightManagerItemObj(value: 50, unit: 'cm', name: '腰围'),
    WeightManagerItemObj(value: 91, unit: 'cm', name: '臀围'),
    WeightManagerItemObj(value: 073, unit: '', name: '腰臀比'),
  ];

  WeightManagerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double valueFontSize = 20;
    Color primaryColor = Theme.of(context).primaryColor;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return CardContainer(
      title: '体重管理',
      subtitle: '查看详情',
      child: Container(
          height: 120,
          margin: const EdgeInsets.only(left: sideMargin, right: sideMargin),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              const int crossAxisCount = 3;
              double itemWidth = constraints.maxWidth / crossAxisCount;
              double itemHeight =
                  constraints.maxHeight / (items.length / crossAxisCount);
              return GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                childAspectRatio: (itemWidth / itemHeight),
                children: [
                  for (int i = 0; i < items.length; i++)
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                items[i].value.toString(),
                                style: TextStyle(
                                  fontSize: valueFontSize,
                                  color: primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: valueFontSize,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      items[i].unit,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: subtitleColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 2)),
                          Text(
                            items[i].name,
                            style: TextStyle(color: subtitleColor),
                          )
                        ],
                      ),
                    ),
                ],
              );
            },
          )),
    );
  }
}
