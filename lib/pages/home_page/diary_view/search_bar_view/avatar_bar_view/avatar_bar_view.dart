import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';

class AvatarBarView extends StatelessWidget {
  final List<String> avatarList;
  const AvatarBarView({Key? key, required this.avatarList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double imageSize = 60;
    Widget ItemContainer({required Widget child, required int index}) {
      return Container(
        margin: const EdgeInsets.only(right: 10),
        width: imageSize,
        height: imageSize,
        child: child,
      );
    }

    return Row(
      children: [
        for (var i = 0; i < avatarList.length; i++)
          ItemContainer(
            child: CircleAvatar(
              backgroundImage: AssetImage(avatarList[i]),
            ),
            index: i,
          ),
        ItemContainer(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(IconFont.icon_plus, color: Colors.white),
                  Text('会员关联', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            index: avatarList.length)
      ],
    );
  }
}
