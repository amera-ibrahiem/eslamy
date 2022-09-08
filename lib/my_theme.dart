import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color primaryColorDark = Color(0xFF12182A);
  static Color blackColor = Color(0xFF242424);
  static Color WhiteColor = Color(0xFFFFFFFF);
  static Color yellowColor = Color(0xFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      canvasColor: primaryColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor)),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: blackColor,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: 25,
            color: blackColor,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColor, unselectedItemColor: Colors.white));

  static final ThemeData darkTheme = ThemeData(
      primaryColor: primaryColorDark,
      canvasColor: primaryColorDark,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: WhiteColor)),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: WhiteColor,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: 25,
            color: yellowColor,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yellowColor, unselectedItemColor: Colors.white));
}
