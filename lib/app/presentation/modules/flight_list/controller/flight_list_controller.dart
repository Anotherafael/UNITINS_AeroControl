import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entities/flight_entity.dart';
import '../../../../domain/services/flight_service.dart';

class FlightListController extends GetxController {
  final FlightService repository;
  final flightList = <FlightEntity>[].obs;

  FlightListController({
    required this.repository,
  });

  Future<void> fetchFlights({
    GlobalKey<AnimatedListState>? listKey,
  }) async {
    final result = await repository.fetchFlights();
    result.fold(
      (failure) {
        Get.defaultDialog(
            title: 'Error no Servidor',
            middleText: 'Um erro na API aconteceu.');
      },
      (flightApiList) {
        for (var i = 0; i < flightApiList.length; i++) {
          flightList.add(flightApiList[i]);

          if (listKey != null) {
            listKey.currentState!.insertItem(
              flightList.length - 1,
              duration: const Duration(milliseconds: 700),
            );
          }
        }
      },
    );
  }
}
