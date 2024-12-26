import 'package:flutter/material.dart';

class CustomThemeData {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1,
    ),
    colorScheme: ColorScheme.light(
      surface: Color.fromARGB(26, 13, 184, 247),
    ),
  );
   static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade800,
      foregroundColor: Colors.white,
      elevation: 1,
    ),
    colorScheme: ColorScheme.dark(
      surface: Color.fromARGB(26, 13, 184, 247),
    ),
  );

}
