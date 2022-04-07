import 'package:flutter/material.dart';

class AppColors {
  static Color darkblue = const Color(0xFF012340);
  static Color darkblue30 = const Color(0xFF012340).withOpacity(0.3);
  static Color darkgreen = const Color(0xFF025939);
  static Color darkgreenAlt = const Color(0xFF027333);
  static Color green = const Color(0xFF04D939);
  static Color green50 = green.withOpacity(0.3);
  static Color greenAlt = const Color(0xFF03A63C);
  static Color yellow = const Color(0xFFCBE23F);
  static Color white = const Color(0xFFEBEDF2);

  static Color blue = const Color(0xFF004fa5);

  static Color diamond = const Color(0xFF258485);

  static final LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      AppColors.blue,
      AppColors.diamond,
    ],
  );
}
