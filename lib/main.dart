import 'package:client/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
      ),
      home: const HomePage(),
    );
  }
}
