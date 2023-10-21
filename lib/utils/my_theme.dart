import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class MyTheme {
static final borderRadius = BorderRadius.circular(4);
static final theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryColor,
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: primaryColor),
    colorScheme: const ColorScheme.light(secondary: redColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
          color: blackColor, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: blackColor),
      elevation: 0,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        caption: TextStyle(fontSize: 12, height: 1.83),
        bodyText1:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.375),
        bodyText2: TextStyle(fontSize: 14, height: 1.5714),
        button: TextStyle(fontSize: 16, height: 2, fontWeight: FontWeight.w600),
        // titleLarge: const TextStyle(
        //     fontSize: 16, height: 2, fontWeight: FontWeight.w600),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 64),
        primary: redColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 3,
      backgroundColor: Color(0x00ffffff),
      selectedLabelStyle: TextStyle(color: redColor, fontSize: 14.0),
      unselectedLabelStyle: TextStyle(color: blackColor, fontSize: 12.0),
      selectedItemColor: redColor,
      unselectedItemColor: blackColor,
      showUnselectedLabels: true,
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      hintStyle: TextStyle(color: grayColor),
      labelStyle: TextStyle(color: grayColor, fontSize: 16),
      border: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: borderColor),
      ),
      fillColor: primaryColor,
      filled: true,
      focusColor: blackColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: blackColor,
      selectionColor: blackColor,
      selectionHandleColor: blackColor,
    ),
  );
}