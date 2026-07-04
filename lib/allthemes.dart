import 'package:flutter/material.dart';

class Allthemes {
  ThemeData lighTheme = ThemeData(
    appBarTheme: AppBarThemeData(
      backgroundColor: Colors.amber,
      titleTextStyle: TextStyle(color: Colors.black,fontSize: 25)
    ),
    scaffoldBackgroundColor: Colors.amber,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 19),
    )
  );

  ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarThemeData(
      backgroundColor: Colors.brown,
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 25)
    ),
    scaffoldBackgroundColor: Colors.brown,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
      titleSmall: TextStyle(fontSize: 19,color: Colors.white),
    )
  );
}