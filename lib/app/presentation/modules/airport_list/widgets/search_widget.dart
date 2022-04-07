import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:infraero_app/app/domain/entities/airport_entity.dart';
import 'package:infraero_app/app/presentation/modules/airport_list/controller/airport_list_controller.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_fonts.dart';

class SearchWidget extends HookWidget {
  SearchWidget(
      {Key? key, required this.airportController, required this.listKey})
      : super(key: key);

  final AirportListController airportController;
  final GlobalKey<AnimatedListState> listKey;

  final searchController = TextEditingController();

  void filterSearchResults(String query) {
    RxList<AirportEntity> dummySearchList = RxList<AirportEntity>();
    dummySearchList.addAll(airportController.filteredList);

    dummySearchList.where((airport) {
      final lowerCaseIata = airport.iata.toLowerCase();
      final lowerCaseQuery = query.toLowerCase();
      return lowerCaseIata.contains(lowerCaseQuery);
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
        controller: searchController,
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
