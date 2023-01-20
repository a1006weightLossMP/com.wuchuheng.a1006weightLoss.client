import 'package:client/config/common_config.dart';
import 'package:client/pages/weight_management_page/weight_management_item_view/weight_management_item_view.dart';
import 'package:flutter/material.dart';

import '../../components/common_app_bar/common_app_bar.dart';

class WeightManagementPage extends StatelessWidget {
  const WeightManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget spacePadding = Padding(padding: EdgeInsets.only(top: 15));
    return Scaffold(
      appBar: commonAppBar(title: '体重管理'),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: sideMargin,
              left: sideMargin,
              right: sideMargin,
            ),
            child: Column(
              children: const [
                WeightManagementItemView(name: '当前体重', value: 52, unit: 'Kg'),
                spacePadding,
                WeightManagementItemView(name: '当前身高', value: 162, unit: 'cm'),
                spacePadding,
                WeightManagementItemView(name: 'BMI', value: 19.8, unit: '正常'),
                spacePadding,
                WeightManagementItemView(name: '腰围', value: 50, unit: 'cm'),
                spacePadding,
                WeightManagementItemView(name: '臀围', value: 91, unit: 'cm'),
                spacePadding,
                WeightManagementItemView(name: '腰臀比', value: 0.73, unit: ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
