import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class uiHelper {
  //* Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.light,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.white,
          fontSize: 35,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
        labelMedium: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  //* Dark Theme

  static ThemeData darkTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.roboto().fontFamily,
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.black54,
          fontSize: 35,
        ),
        bodyMedium: TextStyle(
          color: Colors.black54,
          fontSize: 28,
        ),
        labelMedium: TextStyle(
          color: Colors.black87,
          fontSize: 20,
        ),
      ),
    );
  }
}
