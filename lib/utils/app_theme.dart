// ignore_for_file: unused_import, unused_element, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appThemeData = _appThemeData();

ThemeData _appThemeData() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: const Color.fromARGB(255, 255, 153, 51),
      onPrimary: Colors.white,
      secondary: const Color.fromARGB(255, 223, 27, 12),
      onSecondary: Colors.white,
      error: Colors.red,
      background: const Color.fromARGB(255, 228, 243, 228),
      onBackground: Colors.black,
    ),
    //textTheme: _appTheme(base.textTheme),
    // below text theme add this
    // Define styles for elevated button
    //elevatedButtonTheme: _appTheme(base.elevatedButtonTheme),
  );
}

TextTheme _asthaTutorialTextTheme(TextTheme base) => base.copyWith(
// This'll be our appbars title
      displayLarge: base.displayLarge!.copyWith(
          fontFamily: GoogleFonts.lato().fontFamily,
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white),
// for widgets heading/title
      displayMedium: base.displayMedium!.copyWith(
        fontFamily: GoogleFonts.lato().fontFamily,
        fontSize: 26,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
// for sub-widgets heading/title
      displaySmall: base.displaySmall!.copyWith(
        fontFamily: GoogleFonts.lato().fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
// for widgets contents/paragraph
      bodyLarge: base.bodyLarge!.copyWith(
          fontFamily: GoogleFonts.ubuntu().fontFamily,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black),
// for sub-widgets contents/paragraph
      bodyMedium: base.bodyMedium!.copyWith(
          fontFamily: GoogleFonts.ubuntu().fontFamily,
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.black),
    );

InputDecorationTheme _inputDecorationTheme(InputDecorationTheme base) =>
    const InputDecorationTheme(
// Label color for the input widget
      labelStyle: TextStyle(color: Colors.black),
// Define border of input form while focused on
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
      ),
    );

ElevatedButtonThemeData _elevatedButtonTheme(ElevatedButtonThemeData base) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 223, 27, 12),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    );
