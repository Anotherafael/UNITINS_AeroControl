import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../domain/entities/airport_entity.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_fonts.dart';
import '../controller/airport_list_controller.dart';

class SearchWidget extends HookWidget {
  final ValueNotifier<List<AirportEntity>> airportList;
  final AirportListController airportController;

  const SearchWidget({
    Key? key,
    required this.airportList,
    required this.airportController,
  }) : super(key: key);

  void filterSearchResults(String query) {
    airportList.value = airportController.airportList.where((airport) {
      final lowerCaseIata = airport.iata.toLowerCase();
      final lowerCaseName = airport.name.toLowerCase();
      final lowerCaseQuery = query.toLowerCase();
      return lowerCaseIata.contains(lowerCaseQuery) ||
          lowerCaseName.contains(lowerCaseQuery);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        onChanged: (value) {
          filterSearchResults(value);
        },
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
