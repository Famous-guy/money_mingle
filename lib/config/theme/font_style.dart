import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneymingle_web/config/theme/colors_theme.dart';

class CustomFontStyle {
  static String? inter = GoogleFonts.inter().fontFamily;
  static String? lexend = GoogleFonts.lexend().fontFamily;
  static TextStyle label = TextStyle(
    fontFamily: inter,
    fontSize: 16,
    color: ColorsTheme.primaryWhite,
    fontWeight: FontWeight.w400,
  );
  static TextStyle title = TextStyle(
    fontFamily: lexend,
    fontSize: 54,
    color: ColorsTheme.primaryWhite,
    fontWeight: FontWeight.w700,
  );
  static TextStyle title50 = TextStyle(
    fontFamily: lexend,
    fontSize: 32,
    color: ColorsTheme.primaryWhite50,
    fontWeight: FontWeight.w500,
  );
  static TextStyle title40 = TextStyle(
    fontFamily: lexend,
    fontSize: 24,
    color: ColorsTheme.primaryWhite50,
    fontWeight: FontWeight.w700,
  );
  static TextStyle label2 = TextStyle(
    fontFamily: lexend,
    fontSize: 16,
    color: ColorsTheme.primary100,
    fontWeight: FontWeight.w500,
  );
  static TextStyle label4 = TextStyle(
    fontFamily: lexend,
    fontSize: 20,
    color: ColorsTheme.grey50,
    fontWeight: FontWeight.w400,
  );
}
