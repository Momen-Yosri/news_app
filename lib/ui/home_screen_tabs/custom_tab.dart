import 'package:flutter/material.dart';
import 'package:news_app/api/sources/source.dart';

class CustomTabWidget extends StatelessWidget {
  bool isSelected;
  Source source;
  CustomTabWidget({required this.isSelected,required this.source});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              color: isSelected ? Colors.green : Colors.transparent,
              width: 2.0)),
      child: Text(source.name??'',style: TextStyle(color: isSelected ? Colors.white : Colors.green,
)
       
      ),
    );
  }
}
