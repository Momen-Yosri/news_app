import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(30),
                  bottomStart: Radius.circular(30)))),
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        titleMedium: GoogleFonts.exo(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
      ));
}
