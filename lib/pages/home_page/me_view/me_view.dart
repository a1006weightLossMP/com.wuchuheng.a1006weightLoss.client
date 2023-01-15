import 'package:client/pages/home_page/me_view/me_top_bar_view/me_top_bar_view.dart';
import 'package:flutter/material.dart';

class MeView extends StatelessWidget {
  const MeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MeTopBarView(),
      ],
    );
  }
}
