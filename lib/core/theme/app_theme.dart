import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colores extraídos del Figma Design System
  static const Color primaryColor = Color(0xFFE51D20);
  static const Color darkBlue = Color(0xFF161A33);
  static const Color background = Color(0xFFF7F7F7);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: background,
    appBarTheme: AppBarTheme(
      backgroundColor: background,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        color: darkBlue,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: darkBlue,
      displayColor: darkBlue,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
      background: background,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: darkBlue,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
      background: darkBlue,
    ),
  );
}
