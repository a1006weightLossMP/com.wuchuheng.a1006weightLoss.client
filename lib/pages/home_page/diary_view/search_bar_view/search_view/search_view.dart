import 'package:client/common/iconfont.dart';
import 'package:client/route/route.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  void onTap(BuildContext context) {
    Navigator.pushNamed(context, searchingPageRouteName);
  }

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    return GestureDetector(
      onTap: () => onTap(context),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 20),
        height: 45,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        width: double.infinity,
        child: Flex(
          direction: Axis.horizontal,
          children: [
            const Icon(IconFont.icon_search),
            Expanded(
              child: Text(
                "搜索食物营养和热量",
                style: TextStyle(color: subtitleColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
