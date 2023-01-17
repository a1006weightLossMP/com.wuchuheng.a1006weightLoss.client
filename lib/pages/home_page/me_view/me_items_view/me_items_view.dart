import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';

import '../../../../config/common_config.dart';

class ItemView extends StatelessWidget {
  final String title;
  final IconData iconData;
  const ItemView({Key? key, required this.title, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(iconData, color: primaryColor),
            const Padding(padding: EdgeInsets.only(left: 10)),
            Text(title)
          ],
        ),
        const Icon(Icons.chevron_right),
      ],
    );
  }
}

class MeItemsView extends StatelessWidget {
  const MeItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = Padding(padding: EdgeInsets.only(top: 18));
    return Container(
      margin: const EdgeInsets.all(sideMargin),
      padding: const EdgeInsets.all(sideMargin),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ItemView(title: '我的收货地址', iconData: Icons.location_on),
          padding,
          ItemView(title: "会员关联", iconData: IconFont.icon_process),
          padding,
          ItemView(title: '我的关注', iconData: Icons.star),
          padding,
          ItemView(title: '我的方案', iconData: IconFont.icon_order),
          padding,
          ItemView(title: '客服联系', iconData: IconFont.icon_customerService),
        ],
      ),
    );
  }
}
