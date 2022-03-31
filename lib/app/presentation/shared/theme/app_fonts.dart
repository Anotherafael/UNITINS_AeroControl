import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppFonts {
  static final TextStyle splashTitle = GoogleFonts.montserrat(
    fontSize: 42,
    color: AppColors.white,
  );

  static final TextStyle buttonText = GoogleFonts.montserrat(
    fontSize: 20,
    color: AppColors.white,
  );

  static final TextStyle footerText = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
}
