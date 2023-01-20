import 'package:flutter/material.dart';

PreferredSizeWidget? commonAppBar({required String title}) {
  return AppBar(
    leading: const BackButton(color: Colors.black),
    titleTextStyle: const TextStyle(color: Colors.black),
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    ),
    backgroundColor: Colors.white,
  );
}
