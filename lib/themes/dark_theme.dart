import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black87,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    bodyText1: GoogleFonts.montserrat(),
  ),
);
