import 'package:flutter/material.dart';
import 'package:newmovie/shared/style/color.dart';
class MyTheme {
  static ThemeData appTheme = ThemeData(
      scaffoldBackgroundColor: primarycolor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.black,
        selectedItemColor: yellowcolor,
        unselectedItemColor: Colors.grey,
      ));

}