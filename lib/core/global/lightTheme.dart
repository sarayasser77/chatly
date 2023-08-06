import 'package:flutter/material.dart';

ThemeData LightTheme()=> ThemeData(
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        //green
          color: Color(0xffD4E2D4)
      ),
//pink
      labelMedium: TextStyle(
          color: Color(0xffFBA1B7)
      ),
//purple
      labelSmall: TextStyle(
        color: Color(0xffDBC4F0)
      )
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffDBC4F0)
    ),
    scaffoldBackgroundColor: const Color(0xffFAF3F0)
);