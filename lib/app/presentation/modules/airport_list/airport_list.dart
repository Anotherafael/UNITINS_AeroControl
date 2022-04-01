import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:infraero_app/app/presentation/modules/airport_list/widgets/airport_list_widget.dart';
import 'package:infraero_app/app/presentation/modules/airport_list/widgets/search_widget.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_theme.dart';

import '../../../data/services/airport_service_impl.dart';
import 'controller/airport_list_controller.dart';

class AirportListPage extends HookWidget {
  AirportListPage({Key? key}) : super(key: key);

  final airportController = AirportListController(
    repository: Get.find<AirportServiceImpl>(),
  );

  final GlobalKey<AnimatedListState> listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.backgroundDecoration,
      child: Scaffold(
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: SearchWidget(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: AirportListWidget(
                  airportController: airportController,
                  listKey: listKey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
