import 'package:client/config/common_config.dart';
import 'package:client/pages/weight_loss_program_page/cookbook_view/cookbook_view.dart';
import 'package:client/pages/weight_loss_program_page/top_bar_view/top_bar_view.dart';
import 'package:flutter/material.dart';

import '../../components/common_app_bar/common_app_bar.dart';
import 'sport_style_view/sport_style_view.dart';

class WeightLossProgramPage extends StatelessWidget {
  const WeightLossProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget divider = Padding(
      padding: EdgeInsets.only(top: sideMargin),
    );
    return Scaffold(
      appBar: commonAppBar(
        title: '今日减重方案',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: sideMargin,
            top: sideMargin,
            right: sideMargin,
          ),
          child: Column(
            children: const [
              TopBarView(),
              divider,
              CookbookView(),
              divider,
              SportStyleView(),
            ],
          ),
        ),
      ),
    );
  }
}
