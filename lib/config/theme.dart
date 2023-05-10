import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: const ColorScheme.light().copyWith(primary: Color(0xFF827CA8)),
    //primaryColorDark: Color(0xFF150E40),
    //primaryColorLight: Color(0xFF827CA8),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF3F3772),
    ),
    //scaffoldBackgroundColor: Colors.white,

    fontFamily: 'Futura',

    textTheme: const TextTheme(headline1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize:36,
      ),
    ),
  );
}