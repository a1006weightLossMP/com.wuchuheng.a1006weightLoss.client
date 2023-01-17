import 'package:client/pages/home_page/home_page.dart';
import 'package:client/pages/searching_page/searching_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const searchingPageRouteName = '/searching';
const homePageRouteName = '/';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  String routeName = settings.name!;
  return MaterialPageRoute(
    builder: (context) {
      switch (routeName) {
        case homePageRouteName:
          return const HomePage();
        case searchingPageRouteName:
          return const SearchingPage();
        default:
          return const Scaffold(
            body: Center(
              child: Text("页面不存在"),
            ),
          );
      }
    },
  );
}
