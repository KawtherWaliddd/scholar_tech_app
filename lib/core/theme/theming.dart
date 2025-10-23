import 'package:flutter/material.dart';

import 'colors_app.dart';

class Theming{
  // light theme of app
static final  ThemeData lightMode=ThemeData(
  scaffoldBackgroundColor: ColorsApp.primaryColor,
  //in last version should write
   canvasColor: ColorsApp.mainColor,
iconTheme: IconThemeData(
  color: ColorsApp.mainColor
),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorsApp.mainColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorsApp.primaryColor
        )
),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color:ColorsApp.primaryColor ,
      fontSize:27 ,
      fontFamily:'Pacifico' ,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      color:ColorsApp.mainColor ,
      fontSize:23 ,
      fontFamily:'Pacifico' ,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle(
      color:ColorsApp.mainColor ,
      fontSize:20 ,
      fontFamily:'Pacifico' ,
      fontWeight: FontWeight.w200,
    ),
    bodySmall: TextStyle(
      color:ColorsApp.primaryColor ,
      fontSize:18 ,
      fontFamily:'Pacifico' ,
      fontWeight: FontWeight.w200,
    ),
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