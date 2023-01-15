import 'package:client/pages/home_page/me_view/me_top_bar_view/me_account_view/me_account_view.dart';
import 'package:client/pages/home_page/me_view/me_top_bar_view/me_info_view/me_info_view.dart';
import 'package:client/pages/home_page/me_view/me_top_bar_view/me_vip_view/me_vip_view.dart';
import 'package:flutter/material.dart';

class MeTopBarView extends StatelessWidget {
  const MeTopBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    const double sidePadding = 10;
    return Container(
      height: 160,
      padding: const EdgeInsets.only(
        top: sidePadding,
        left: sidePadding,
        right: sidePadding,
      ),
      color: primaryColor,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MeAccountView(),
          MeInfoView(),
          MeVipView(),
        ],
      ),
    );
  }
}
