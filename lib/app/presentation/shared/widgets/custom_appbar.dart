import 'package:flutter/material.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_colors.dart';
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
