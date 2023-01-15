import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';

class DeviceManagerTopView extends StatelessWidget {
  const DeviceManagerTopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    const double fontSize = 16;
    const double containerPadding = 8;
    return Container(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '我的智能手表',
            style: TextStyle(fontSize: fontSize),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: containerPadding,
              right: containerPadding,
              top: 2,
              bottom: 2,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(fontSize)),
              border: Border.all(width: 1, color: primaryColor),
            ),
            child: Row(
              children: [
                Icon(
                  IconFont.icon_refresh,
                  size: fontSize,
                  color: primaryColor,
                ),
                const Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  '同步',
                  style: TextStyle(fontSize: fontSize, color: primaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
