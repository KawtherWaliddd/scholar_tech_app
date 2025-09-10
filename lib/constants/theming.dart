

import 'package:flutter/material.dart';

import 'colors_app.dart';

class Theming{
  // light theme of app
static final  ThemeData lightMode=ThemeData(
  //in last version should write
   canvasColor: ColorsApp.mainColor,
iconTheme: IconThemeData(
  color: ColorsApp.mainColor
),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorsApp.mainColor,
        elevation: 0,
),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color:ColorsApp.primaryColor ,
      fontSize:27 ,
      fontFamily:'Pacifico' ,
      fontWeight: FontWeight.w400,
    )
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  elevation: 0,
    backgroundColor: ColorsApp.mainColor,
    showUnselectedLabels: false,
    unselectedItemColor: ColorsApp.whiteColor,
    selectedItemColor: ColorsApp.primaryColor,
  )
);
}