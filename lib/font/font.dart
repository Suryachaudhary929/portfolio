import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextstyle() {
    return GoogleFonts.aboreto(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
static TextStyle headerText() {
    return GoogleFonts.aboreto(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.limeAccent
    );
  }
  static TextStyle Monterrest() {
    return GoogleFonts.montserrat(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }

  static TextStyle Normal() {
    return GoogleFonts.montserrat(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.w200
    );
  }

  static TextStyle Abela() {
    return GoogleFonts.actor(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 250, 222, 4),
    );
  }
   static TextStyle Black() {
    return GoogleFonts.actor(
      fontSize: 20,
      fontWeight: FontWeight.w200,
      color: Colors.black87,
    );
  }

  static TextStyle style() {
    return GoogleFonts.actor(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }

  static TextStyle HeadingStyles() {
    return GoogleFonts.rubikMoonrocks(
      fontSize: 30,
      fontWeight: FontWeight.w200,
      color: Colors.white,
      letterSpacing: 2,
    );
  }
   static TextStyle Yellow() {
    return GoogleFonts.rubikMoonrocks(
      fontSize: 30,
      fontWeight: FontWeight.w200,
      color: Colors.amber.shade700,
      letterSpacing: 2,
    );
  }

  static TextStyle HeadingStyle() {
    return GoogleFonts.rubikMoonrocks(
      fontSize: 30,
      fontWeight: FontWeight.w200,
      color: Colors.green,
      letterSpacing: 2,
    );
  }
  static TextStyle green() {
    return GoogleFonts.montserrat(
      fontSize:12,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 208, 19, 201),
      letterSpacing: 2,
    );
  }
   static TextStyle whiteMonterrest() {
    return GoogleFonts.montserrat(
      fontSize: 13,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }
  
}
