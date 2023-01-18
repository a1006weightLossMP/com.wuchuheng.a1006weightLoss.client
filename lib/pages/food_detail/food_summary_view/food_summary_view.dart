import 'package:flutter/material.dart';

class FoodSummaryView extends StatelessWidget {
  const FoodSummaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double imageSize = 80;
    final Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;
    const double subtitleFontSize = 11;
    final Color primaryColor = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            "assets/images/foods_detail_page/plum.jpeg",
            width: imageSize,
            height: imageSize,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '草莓',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    '32千卡/100克',
                    style: TextStyle(
                      color: subtitleColor,
                      fontSize: subtitleFontSize,
                    ),
                  ),
                ),
                Text('需行走1km 慢跑700m',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: subtitleFontSize,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
