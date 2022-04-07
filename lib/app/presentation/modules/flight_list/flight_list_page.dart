// ignore_for_file: invalid_use_of_protected_member

import 'package:aero_control/app/data/services/flight_service.dart';
import 'package:aero_control/app/presentation/modules/flight_list/controller/flight_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

import '../../../domain/entities/flight_entity.dart';
import '../../shared/theme/app_theme.dart';
import 'widgets/flight_list_widget.dart';

class FlightListPage extends HookWidget {
  final flightController = FlightListController(
    repository: Get.find<FlightServiceImpl>(),
  );

  FlightListPage({Key? key}) : super(key: key);

  void _buildList({
    required FlightListController flightController,
    required ValueNotifier<List<FlightEntity>> flightList,
  }) async {
    await flightController.fetchFlights();
    flightList.value = flightController.flightList.value;
  }

  @override
  Widget build(BuildContext context) {
    final flightList = useState<List<FlightEntity>>([]);

    useEffect(() {
      _buildList(
        flightController: flightController,
        flightList: flightList,
      );
      return null;
    }, []);
    return Container(
      decoration: AppTheme.backgroundDecoration,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                  child: FlightListWidget(
                    flightList: flightList,
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
