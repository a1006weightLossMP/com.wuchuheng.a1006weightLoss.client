import 'package:flutter/material.dart';

import '../weight_loss_program_common.dart';

class ItemView extends StatelessWidget {
  final double height;
  final String subtitle;
  const ItemView({
    Key? key,
    required this.height,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    Color? subtitleColor = Theme.of(context).textTheme.subtitle1?.color;

    return Expanded(
      child: SizedBox(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: '1870',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: ' / 千米',
                    style: TextStyle(
                      color: subtitleColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              '每日摄入热量',
              style: TextStyle(color: subtitleColor),
            )
          ],
        ),
      ),
    );
  }
}

class TopBarView extends StatelessWidget {
  const TopBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    const double height = 100;
    Color? background = Theme.of(context).backgroundColor;
    final divider = Container(height: height * .5, width: 2, color: background);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: size.maxWidth,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '减重第3天',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const ItemView(height: height, subtitle: '每日需摄入热量'),
                    divider,
                    const ItemView(height: height, subtitle: '每日亏空热量'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
