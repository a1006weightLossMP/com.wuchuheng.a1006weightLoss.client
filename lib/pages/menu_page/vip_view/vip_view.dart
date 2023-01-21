import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VipView extends StatelessWidget {
  const VipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = HexColor('#E7B984');
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints size) {
        return Container(
          height: size.maxHeight,
          color: HexColor('#484E60'),
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('成为VIP会员', style: TextStyle(color: color)),
                  Text(
                    '成为VIP会员可按热量配比要求选择种类点餐',
                    style: TextStyle(color: color, fontSize: 10),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: HexColor('#E69972'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('成为会员'),
              )
            ],
          ),
        );
      },
    );
  }
}
