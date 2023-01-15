import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';

import 'daily_meal_item_content_view/daily_meal_item_content_view.dart';

class TabTitleView extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color iconStartColor;
  final Color iconEndColor;
  final void Function() onTap;
  const TabTitleView({
    Key? key,
    required this.iconData,
    required this.title,
    required this.iconStartColor,
    required this.iconEndColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 28;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    Color primaryColor = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        iconStartColor,
                        iconEndColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                    size: iconSize,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  '建议200千卡',
                  style: TextStyle(
                    fontSize: 12,
                    color: subtitleColor,
                  ),
                ),
              ],
            ),
            Icon(IconFont.icon_plus, color: primaryColor),
          ],
        ),
      ),
    );
  }
}

class DailyMealItemView extends StatefulWidget {
  final IconData iconData;
  final String title;
  final Color iconStartColor;
  final Color iconEndColor;
  const DailyMealItemView(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.iconStartColor,
      required this.iconEndColor})
      : super(key: key);

  @override
  State<DailyMealItemView> createState() => _DailyMealItemViewState();
}

class _DailyMealItemViewState extends State<DailyMealItemView> {
  bool isOpen = false;

  void onChange() => setState(() => isOpen = !isOpen);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = Theme.of(context).backgroundColor;
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: backgroundColor,
            ),
          ),
        ),
        child: Column(
          children: [
            TabTitleView(
              title: widget.title,
              iconData: widget.iconData,
              iconStartColor: widget.iconStartColor,
              iconEndColor: widget.iconEndColor,
              onTap: onChange,
            ),
            DailyMealItemContentView(
              isOpen: isOpen,
            ),
          ],
        ),
      ),
    );
  }
}
