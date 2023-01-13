import 'package:client/pages/home_page/diary_view/diary_view_common.dart';
import 'package:client/pages/home_page/diary_view/search_bar_view/avatar_bar_view/avatar_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'search_view/search_view.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    const double maxHeight = 150;
    return Container(
      height: maxHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            HexColor('#43E091'),
            primaryColor,
          ],
        ),
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(left: sideMargin, right: sideMargin),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: maxHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SearchView(),
            AvatarBarView(
              avatarList: [
                "assets/images/avatars/avatar1.png",
                "assets/images/avatars/avatar2.png",
              ],
            ),
          ],
        ),
      ),
    );
  }
}
