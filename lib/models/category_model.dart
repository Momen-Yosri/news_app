import 'package:flutter/material.dart';

class CategoryModel {
   String titleID;
  String title;
  String imagePath;
  Color backGroundColor;
  CategoryModel(
      {required this.titleID,
      required this.imagePath,
      required this.backGroundColor,
      required this.title});
  //
  static List<CategoryModel> cards = [
    CategoryModel(
        title: 'sports',
        titleID: "sports",
        imagePath: "assets/sports.png",
        backGroundColor: Color(0xffC91C22)),
    CategoryModel(
        title: 'technology',
        titleID: "technology",
        imagePath: "assets/Politics.png",
        backGroundColor: Color(0xff003E90)),
    CategoryModel(
        title: 'health',
        titleID: "health",
        imagePath: "assets/health.png",
        backGroundColor: Color(0xffED1E79)),
    CategoryModel(
        title: "business",
        titleID: "business",
        imagePath: "assets/bussines.png",
        backGroundColor: Color(0xffCF7E48)),
    CategoryModel(
        title: 'general ',
        titleID: "general",
        imagePath: "assets/environment.png",
        backGroundColor: Color(0xff4882CF)),
    CategoryModel(
        title: 'science',
        titleID: "science",
        imagePath: "assets/science.png",
        backGroundColor: Color(0xffF2D352)),
  ];
}
