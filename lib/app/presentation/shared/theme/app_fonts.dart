import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppFonts {
  static final TextStyle splashTitle = GoogleFonts.poppins(
    fontSize: 42,
    color: AppColors.white,
  );

  static final TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 20,
    color: AppColors.white,
  );

  static final TextStyle footerText = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );

  static final TextStyle searchHintText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle cardTitleIATAText = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static final TextStyle cardTitleText = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.white,
    letterSpacing: 1.1,
  );

  static final TextStyle flightCardTitleText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static final TextStyle flightCardDateText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
  );
}
