import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

enum LevelState {
  normal,
  danger,
  warning,
}

Color levelStateMapColor(LevelState levelState, BuildContext context) {
  switch (levelState) {
    case LevelState.normal:
      Color primaryColor = Theme.of(context).primaryColor;
      return primaryColor;
    case LevelState.danger:
      return HexColor('#F2505D');
    case LevelState.warning:
      return HexColor('#F6A34F');
  }
}

String levelStateMapName(LevelState levelState) {
  switch (levelState) {
    case LevelState.normal:
      return '正常';
    case LevelState.danger:
      return '偏高';
    case LevelState.warning:
      return '偏低';
  }
}

class ContentItemView extends StatelessWidget {
  final String name;
  final LevelState levelState;
  final String unit;
  final int value;
  final List<String> items;
  final bool isShowBorder;

  const ContentItemView({
    Key? key,
    required this.name,
    required this.levelState,
    required this.unit,
    required this.value,
    required this.items,
    this.isShowBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = Theme.of(context).backgroundColor;
    const double paddingTB = 10;
    Color primaryColor = Theme.of(context).primaryColor;
    double fontSize = 20;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    const double buttonWidth = 50;
    const padding = Padding(padding: EdgeInsets.only(left: 5));
    const rowPadding = Padding(padding: EdgeInsets.only(top: 5));

    return Container(
      padding: const EdgeInsets.only(
        top: paddingTB,
        bottom: paddingTB,
      ),
      decoration: BoxDecoration(
        border: isShowBorder
            ? Border(
                bottom: BorderSide(
                  width: 1,
                  color: backgroundColor,
                ),
              )
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: fontSize),
                  ),
                  padding,
                  padding,
                  Text(
                    value.toString(),
                    style: TextStyle(
                      fontSize: fontSize,
                      color: levelStateMapColor(levelState, context),
                    ),
                  ),
                  padding,
                  Text(
                    unit,
                    style: TextStyle(
                      color: levelStateMapColor(levelState, context),
                    ),
                  ),
                  padding,
                  Text(
                    levelStateMapName(levelState),
                    style: TextStyle(color: subtitleColor),
                  ),
                  padding,
                  Container(
                    margin: const EdgeInsets.only(bottom: 4),
                    child: Icon(
                      IconFont.icon_report,
                      size: 18,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              Container(
                height: 30,
                width: buttonWidth,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: primaryColor,
                ),
                child: const Center(
                  child: Text(
                    '咨询',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          rowPadding,
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints size) {
              return SizedBox(
                width: size.maxWidth - buttonWidth - 10,
                child: Wrap(
                  runSpacing: 4.0, // gap between lines
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: [
                    ...items
                        .map(
                          (e) =>
                              Text(e, style: TextStyle(color: subtitleColor)),
                        )
                        .toList(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
