import 'package:flutter/material.dart';

PreferredSizeWidget SearchingAppBarView(
  BuildContext context, {
  required void Function(String newKeyword) onChange,
}) {
  final Color primaryColor = Theme.of(context).primaryColor;
  return AppBar(
    backgroundColor: primaryColor,
    title: Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 36,
            child: TextField(
                maxLines: 1,
                style: const TextStyle(fontSize: 17),
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(left: 15),
                  hintText: '请输入食物营养和热量',
                ),
                onChanged: onChange),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        GestureDetector(
          onTap: () => onChange(''),
          child: const Text('取消'),
        ),
      ],
    ),
  );
}
