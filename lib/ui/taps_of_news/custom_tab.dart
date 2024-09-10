import 'package:flutter/material.dart';
import 'package:news_app/api/models/sources/source.dart';

class CustomTabWidget extends StatelessWidget {
  bool isSelected;
  Source source;
  CustomTabWidget({required this.isSelected, required this.source});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              color: isSelected ? Colors.transparent : Colors.green,
              width: 2.0)),
      child: Text(source.name ?? '',
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.green,
          )),
    );
  }
}
