import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  final int activeIndex;
  final List<String> categories;
  final void Function(int newActiveIndex) onChange;

  const CategoriesView({
    Key? key,
    required this.activeIndex,
    required this.categories,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return SizedBox(
      width: 80,
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < categories.length; i++)
              GestureDetector(
                onTap: () => onChange(i),
                child: Container(
                  height: 55,
                  color: i == activeIndex ? primaryColor : Colors.white,
                  child: Center(
                    child: Text(
                      categories[i],
                      style: TextStyle(
                          color: i == activeIndex ? Colors.white : null),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
