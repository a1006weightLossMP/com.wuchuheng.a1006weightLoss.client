import 'package:client/config/common_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../components/card_container/card_container.dart';

class SearchingEmptyView extends StatelessWidget {
  final void Function(String newKeyword) onChange;

  SearchingEmptyView({Key? key, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      '鸡蛋',
      '米饭',
      '玉米',
      '苹果',
      '鸡胸肉',
      '牛奶',
      '牛肉',
    ];

    return CardContainer(
      title: '热门食物',
      child: Container(
        padding: const EdgeInsets.only(left: sideMargin, right: sideMargin),
        width: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          spacing: 15,
          runSpacing: 15,
          children: [
            ...items
                .map(
                  (e) => GestureDetector(
                    onTap: () => onChange(e),
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor('#F2F2F2'),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 3, bottom: 3),
                      child: Text(e),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
