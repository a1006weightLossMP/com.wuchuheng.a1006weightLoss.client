import 'package:client/pages/food_detail/food_detail.dart';
import 'package:client/pages/home_page/home_page.dart';
import 'package:client/pages/searching_page/searching_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuchuheng_route_parser/wuchuheng_route_parser.dart';

const String searchingPageRouteName = '/searching';
const String homePageRouteName = '/';
const String foodDetailRouteName = '/foods/:id';
const String initialRoute = '/foods/1';

RoutesType routes = {
  homePageRouteName: () => const HomePage(),
  searchingPageRouteName: () => const SearchingPage(),
  foodDetailRouteName: () => const FoodDetail(),
};

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  String routeName = settings.name!;
  final callback = parseRouteToWidget(routes, routeName);
  Widget? widget = callback();

  return MaterialPageRoute(
    builder: (context) {
      return widget ??
          const Scaffold(
            body: Center(
              child: Text("页面不存在"),
            ),
          );
    },
  );
}
