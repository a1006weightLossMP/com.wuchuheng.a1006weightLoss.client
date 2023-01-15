import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MeVipView extends StatelessWidget {
  const MeVipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: HexColor('#43495E'),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '会员开通万康会员,可观看VIP会员课程',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: HexColor('#F4C894'),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const Text('加入会员'),
          ),
        ],
      ),
    );
  }
}
