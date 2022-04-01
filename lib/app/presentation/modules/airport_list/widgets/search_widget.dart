import 'package:flutter/material.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        style: AppFonts.searchHintText,
        cursorHeight: 24,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          prefixIcon: const Icon(
            Icons.search,
            size: 35,
          ),
          hintText: "Search",
          hintStyle: AppFonts.searchHintText,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: AppColors.white,
        ),
      ),
    );
  }
}
