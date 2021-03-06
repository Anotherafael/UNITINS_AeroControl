import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entities/airport_entity.dart';
import '../../../../domain/services/airport_service.dart';

class AirportListController extends GetxController {
  final AirportService repository;
  final airportList = <AirportEntity>[].obs;

  AirportListController({
    required this.repository,
  });

  Future<void> fetchAirports({
    GlobalKey<AnimatedListState>? listKey,
  }) async {
    final result = await repository.fetchAirports();
    result.fold(
      (failure) {
        Get.defaultDialog(
            title: 'Error no Servidor',
            middleText: 'Um erro na API aconteceu.');
      },
      (airportApiList) {
        for (var i = 0; i < airportApiList.length; i++) {
          airportList.add(airportApiList[i]);

          if (listKey != null) {
            listKey.currentState!.insertItem(
              airportList.length - 1,
              duration: const Duration(milliseconds: 700),
            );
          }
        }
      },
    );
  }
}
