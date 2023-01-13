import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: HexColor('#37CEA3'),
        backgroundColor: HexColor('#F0F0F0'),
        textTheme: TextTheme(
          subtitle1: TextStyle(color: HexColor('#8E8E8E')), // 副标题
        ),
      ),
      home: const HomePage(),
    );
  }
}
