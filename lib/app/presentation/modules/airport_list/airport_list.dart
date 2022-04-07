// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

import '../../../data/services/airport_service_impl.dart';
import '../../../domain/entities/airport_entity.dart';
import '../../shared/theme/app_theme.dart';
import 'controller/airport_list_controller.dart';
import 'widgets/airport_list_widget.dart';
import 'widgets/search_widget.dart';

class AirportListPage extends HookWidget {
  AirportListPage({Key? key}) : super(key: key);

  final airportController = AirportListController(
    repository: Get.find<AirportServiceImpl>(),
  );

  void _buildList({
    required AirportListController airportController,
    required ValueNotifier<List<AirportEntity>> airportList,
  }) async {
    await airportController.fetchAirports();
    airportList.value = airportController.airportList.value;
  }

  @override
  Widget build(BuildContext context) {
    final airportList = useState<List<AirportEntity>>([]);

    useEffect(() {
      _buildList(
        airportController: airportController,
        airportList: airportList,
      );
      return null;
    }, []);
    return Container(
      decoration: AppTheme.backgroundDecoration,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: SearchWidget(
                  airportController: airportController,
                  airportList: airportList,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: AirportListWidget(
                    airportList: airportList,
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
