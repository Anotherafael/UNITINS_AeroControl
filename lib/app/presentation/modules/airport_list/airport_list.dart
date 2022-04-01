import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_colors.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_theme.dart';

class AirportListPage extends HookWidget {
  const AirportListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.backgroundDecoration,
      child: Scaffold(
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
