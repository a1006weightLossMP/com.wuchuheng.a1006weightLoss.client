import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';

class MeInfoView extends StatelessWidget {
  const MeInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 50;
    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: height / 2,
                backgroundImage: AssetImage(
                  "assets/images/home_page/diary_view/avatars/avatar1.png",
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('小花儿', style: TextStyle(color: Colors.white)),
                  Text(
                    'ID: 5632893',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(
            IconFont.icon_editor,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
