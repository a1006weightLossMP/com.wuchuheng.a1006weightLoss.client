import 'package:client/common/iconfont.dart';
import 'package:client/pages/home_page/components/home_page_card_container/home_page_card_container.dart';
import 'package:client/pages/home_page/home_page_common.dart';
import 'package:flutter/material.dart';

class MeOrderItemView extends StatelessWidget {
  final IconData iconData;
  final String name;
  const MeOrderItemView({Key? key, required this.iconData, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: primaryColor),
        const Padding(padding: EdgeInsets.only(top: 5)),
        Text(name),
      ],
    );
  }
}

class MeOrderView extends StatelessWidget {
  const MeOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageCardContainer(
      title: '我的订单',
      subtitle: '全部订单',
      child: Container(
        padding: const EdgeInsets.only(left: sideMargin, right: sideMargin),
        width: double.infinity,
        height: 100,
        child: GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 2,
            crossAxisCount: 4,
          ),
          children: const [
            MeOrderItemView(
              name: '已完成',
              iconData: IconFont.icon_order,
            ),
            MeOrderItemView(
              name: '已支付',
              iconData: IconFont.icon_bill,
            ),
            MeOrderItemView(
              name: '待支付',
              iconData: IconFont.icon_daizhifu,
            ),
            MeOrderItemView(
              name: '售后/退款',
              iconData: IconFont.icon_after_safes,
            ),
          ],
        ),
      ),
    );
  }
}
