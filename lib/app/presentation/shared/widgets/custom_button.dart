import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.toPage})
      : super(key: key);

  final String text;
  final String toPage;

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
        onPressed: () {
          Get.toNamed('/' + toPage);
        },
        child: Text(
          text,
          style: AppFonts.buttonText,
        ),
      ),
    );
  }
}
