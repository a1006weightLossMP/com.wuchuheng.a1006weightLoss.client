import 'package:client/pages/home_page/diary_view/daily_calories_view/daily_calories_common.dart';
import 'package:flutter/material.dart';

import '../../../../common/iconfont.dart';
import '../../home_page_common.dart';

class HomePageCardContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final String? subtitle;
  final IconData? subtitleIconData;
  final Color? subtitleIconColor;
  final bool isShowSubtitleIcon;
  final IconData? leftIconData;
  Color? subtitleColor;
  double subtitleSize;
  HomePageCardContainer({
    Key? key,
    required this.child,
    required this.title,
    this.subtitle,
    this.subtitleIconData,
    this.subtitleIconColor,
    this.subtitleSize = 13,
    this.isShowSubtitleIcon = true,
    this.subtitleColor,
    this.leftIconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                left: sideMargin,
                right: sideMargin,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      if (leftIconData != null)
                        Container(
                          padding: const EdgeInsets.only(right: 2),
                          child: Icon(
                            leftIconData,
                            size: subtitleSize,
                            color: subtitleColor,
                          ),
                        ),
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: TextStyle(
                            fontSize: subtitleSize,
                            color: subtitleColor,
                          ),
                        ),
                      if (isShowSubtitleIcon &&
                          (subtitleIconData != null || subtitle != null))
                        Container(
                          margin: const EdgeInsets.only(left: 3),
                          child: Icon(
                            subtitleIconData ?? IconFont.icon_right,
                            color: subtitleIconColor,
                            size: subtitleSize,
                          ),
                        ),
                    ],
                  ),
                ],
              )),
          child,
        ],
      ),
    );
  }
}
