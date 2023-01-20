import 'package:client/route/route.dart';
import 'package:flutter/material.dart';

class DailyCaloriesButtonView extends StatelessWidget {
  const DailyCaloriesButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, weightLossProgramRouteName),
      child: Container(
        height: 40,
        width: 140,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: const Center(
          child: Text(
            '形成减重方案',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
