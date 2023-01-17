import 'package:client/pages/searching_page/searching_app_bar_view/searching_app_bar_view.dart';
import 'package:client/pages/searching_page/searching_empty_view/searching_empty_view.dart';
import 'package:client/pages/searching_page/searching_result_view/searching_result_view.dart';
import 'package:flutter/material.dart';

class SearchingPage extends StatefulWidget {
  const SearchingPage({Key? key}) : super(key: key);

  @override
  State<SearchingPage> createState() => _SearchingPageState();
}

class _SearchingPageState extends State<SearchingPage> {
  String keywords = 'hello';

  void onChange(String newKeyword) {
    keywords = newKeyword;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchingAppBarView(context, onChange: onChange),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: keywords.isEmpty
            ? SearchingEmptyView(onChange: onChange)
            : SearchingResultView(),
      ),
    );
  }
}
