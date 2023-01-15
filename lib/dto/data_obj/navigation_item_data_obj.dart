import 'package:flutter/material.dart';

class NavigationItemDataObj {
  final IconData iconData;
  final String name;
  final Widget content;
  final PreferredSizeWidget? Function()? appBar;

  NavigationItemDataObj({
    required this.iconData,
    required this.name,
    required this.content,
    this.appBar,
  });
}
