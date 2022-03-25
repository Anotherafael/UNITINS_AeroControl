import 'package:flutter/material.dart';

class AppColors {
  static Color darkblue = const Color(0xFF012340);
  static Color darkgreen = const Color(0xFF025939);
  static Color darkgreenAlt = const Color(0xFF027333);
  static Color green = const Color(0xFF04D939);
  static Color greenAlt = const Color(0xFF03A63C);
  static Color yellow = const Color(0xFFCBE23F);
  static Color white = const Color(0xFFEBEDF2);

  static final LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      AppColors.green,
      AppColors.darkgreenAlt,
    ],
  );
}
