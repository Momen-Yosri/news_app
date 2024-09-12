import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/ui/categories/category_item.dart';

class CategoriesTab extends StatelessWidget {
  Function onCategoryPress;
  CategoriesTab({super.key,required this.onCategoryPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Pick your category\nof interest",
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xff4F5A69)),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 25, mainAxisSpacing: 25),
              itemBuilder: (context, index) =>
                  InkWell(child: CategoryItem(categoryModel: CategoryModel.cards[index]),onTap: (){
                    onCategoryPress(CategoryModel.cards[index]);
                  },),
              itemCount: CategoryModel.cards.length,
            ),
          ),
        ],
      ),
    );
  }
  
 
}
