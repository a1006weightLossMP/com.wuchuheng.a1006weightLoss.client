import 'package:client/common/iconfont.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: double.infinity,
      child: Flex(
        direction: Axis.horizontal,
        children: const [
          Icon(IconFont.icon_search),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "搜索食物营养和热量",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
