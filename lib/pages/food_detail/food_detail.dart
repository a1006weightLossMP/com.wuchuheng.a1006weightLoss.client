import 'package:client/pages/food_detail/food_analysising_view/food_analysising_view.dart';
import 'package:client/pages/food_detail/food_description_view/food_description_view.dart';
import 'package:client/pages/food_detail/food_summary_view/food_summary_view.dart';
import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = Padding(padding: EdgeInsets.only(top: 16));
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black),
        title: const Text("食物详情", style: TextStyle(fontSize: 16)),
      ),
      body: SafeArea(
          child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          children: const [
            padding,
            FoodSummaryView(),
            padding,
            FoodDescriptionView(),
            padding,
            FoodAnalysingView(),
          ],
        ),
      )),
    );
  }
}
