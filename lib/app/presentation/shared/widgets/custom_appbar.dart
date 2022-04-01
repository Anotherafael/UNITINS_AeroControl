import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import '../theme/app_colors.dart';
>>>>>>> 584358c8dd4ce7f998a3dab83fe116dfe6270f6f
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class CustomAppBar extends PreferredSize {
  CustomAppBar({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(300),
          child: SafeArea(
            child: Container(
              child: Lottie.asset(
                "assets/animations/logo.json",
                height: 150,
              ),
            ),
          ),
        );
}
