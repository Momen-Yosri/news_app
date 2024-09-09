import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel model;
  const CategoryItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: model.backGroundColor,
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Image.asset(
            model.imagePath,
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            model.title,
            style: GoogleFonts.exo(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
