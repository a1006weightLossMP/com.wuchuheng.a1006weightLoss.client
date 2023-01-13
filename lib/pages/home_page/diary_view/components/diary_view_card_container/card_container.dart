import 'package:flutter/material.dart';

import '../../../../../common/iconfont.dart';
import '../../diary_view_common.dart';

class DiaryViewCardContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final String? subtitle;
  final IconData? subtitleIconData;
  const DiaryViewCardContainer({
    Key? key,
    required this.child,
    required this.title,
    this.subtitle,
    this.subtitleIconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double subtitleSize = 13;
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
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: const TextStyle(fontSize: subtitleSize),
                        ),
                      if (subtitleIconData != null || subtitle != null)
                        Container(
                          margin: const EdgeInsets.only(left: 3),
                          child: Icon(
                            subtitleIconData ?? IconFont.icon_right,
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
