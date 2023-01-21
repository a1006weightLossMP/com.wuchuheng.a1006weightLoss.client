import 'package:client/pages/food_detail/food_detail.dart';
import 'package:client/pages/home_page/home_page.dart';
import 'package:client/pages/menu_page/menu_page.dart';
import 'package:client/pages/my_cook_book_page/my_cook_book_page.dart';
import 'package:client/pages/searching_page/searching_page.dart';
import 'package:client/pages/weight_loss_program_page/weight_loss_program_page.dart';
import 'package:client/pages/weight_management_page/weight_management_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuchuheng_route_parser/wuchuheng_route_parser.dart';

const String searchingPageRouteName = '/searching';
const String homePageRouteName = '/';
const String foodDetailRouteName = '/foods/:id';
const String weightManagerRouteName = '/weightManagement';
const String weightLossProgramRouteName = '/weightLossProgram';
const String myCookBookRouteName = '/myCookBook';
const String menuRouteName = '/menu';

const String initialRoute = menuRouteName;

RoutesType routes = {
  homePageRouteName: () => const HomePage(),
  searchingPageRouteName: () => const SearchingPage(),
  foodDetailRouteName: () => const FoodDetail(),
  weightManagerRouteName: () => const WeightManagementPage(),
  weightLossProgramRouteName: () => const WeightLossProgramPage(),
  myCookBookRouteName: () => const MyCookBookPage(),
  menuRouteName: () => const MenuPage(),
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
