import 'package:flutter/material.dart';
import 'package:news_app/api/sources/source.dart';

class customTabWidget extends StatelessWidget {
  List<Source> sourcesTabs =[];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: sourcesTabs.length,child: Column(
      children: [
        customTabWidget(),
      ],
    ),);
  }
}