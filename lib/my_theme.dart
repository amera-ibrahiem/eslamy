import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
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
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColor, unselectedItemColor: Colors.white));

  static final ThemeData darkTheme = ThemeData();
}
