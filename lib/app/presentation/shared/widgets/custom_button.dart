import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 0),
      width: 280,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: AppColors.diamond,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFonts.buttonText,
        ),
      ),
    );
  }
}
