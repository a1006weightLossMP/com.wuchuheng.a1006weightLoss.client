import 'package:flutter/material.dart';

import '../../components/home_page_card_container/home_page_card_container.dart';
import 'content_item_view/content_item_view.dart';
import 'device_manager_top_view/device_manager_top_view.dart';

class DeviceManagerView extends StatelessWidget {
  const DeviceManagerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageCardContainer(
      subtitle: '更换设备',
      title: '穿戴设备',
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: const [
            DeviceManagerTopView(),
            ContentItemView(
              name: '血压',
              levelState: LevelState.danger,
              unit: 'mmHg',
              value: 250,
              items: [
                '收缩压: 2000mmHg',
                '舒张压: 200mmHg',
                '正常血压范围: 200mmHg',
              ],
            ),
            ContentItemView(
              name: '心率',
              levelState: LevelState.normal,
              unit: '次/分',
              value: 60,
              items: [
                '正常心率范围: 60-100次/分',
              ],
            ),
            ContentItemView(
              name: '血糖',
              levelState: LevelState.danger,
              unit: 'mg/dL',
              value: 18,
              items: [
                '正常血糖范围: 3.9~6.1 mg/dL',
              ],
            ),
            ContentItemView(
              name: '体脂率',
              levelState: LevelState.warning,
              unit: '%',
              value: 20,
              items: [
                '正常体脂率范围: 25%～28%',
              ],
              isShowBorder: false,
            ),
          ],
        ),
      ),
    );
  }
}
