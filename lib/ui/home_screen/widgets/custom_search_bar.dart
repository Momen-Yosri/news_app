import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  TextEditingController controller;
   CustomSearchBar({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller:controller ,
      
    );

  }
}