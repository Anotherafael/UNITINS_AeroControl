import 'package:flutter/material.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_colors.dart';

class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      );

  static BoxDecoration get backgroundDecoration => BoxDecoration(
        gradient: AppColors.background,
      );
}
