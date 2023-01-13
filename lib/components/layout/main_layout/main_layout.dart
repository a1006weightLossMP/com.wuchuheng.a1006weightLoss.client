import 'package:flutter/material.dart';

import '../../../dto/data_obj/navigation_item_data_obj.dart';

class MainLayout extends StatelessWidget {
  final int activeIndex;
  final List<NavigationItemDataObj> navigationItems;
  final void Function(int newActiveIndex) onChange;

  const MainLayout({
    Key? key,
    required this.activeIndex,
    required this.onChange,
    required this.navigationItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    final Color backgroundColor = Theme.of(context).backgroundColor;

    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: Container(
                  color: backgroundColor,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: navigationItems[activeIndex].content,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 58,
              width: double.infinity,
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var i = 0; i < navigationItems.length; i++)
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          onChange(i);
                        },
                        child: Container(
                          color: Colors.white,
                          child: Flex(
                            key: Key(i.toString()),
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                navigationItems[i].iconData,
                                color: activeIndex == i ? primaryColor : null,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 2),
                                child: Text(
                                  navigationItems[i].name,
                                  style: TextStyle(
                                    color:
                                        activeIndex == i ? primaryColor : null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
