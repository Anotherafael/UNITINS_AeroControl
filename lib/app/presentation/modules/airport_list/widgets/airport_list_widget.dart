import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:infraero_app/app/presentation/modules/airport_list/components/airport_card_widget.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_colors.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:lottie/lottie.dart';

import '../../../../domain/entities/airport_entity.dart';
import '../controller/airport_list_controller.dart';

class AirportListWidget extends HookWidget {
  const AirportListWidget(
      {Key? key, required this.airportController, required this.listKey})
      : super(key: key);

  final AirportListController airportController;
  // final ValueNotifier<List<AirportEntity>> list;
  final GlobalKey<AnimatedListState> listKey;

  Future<void> _loadItems() async {
    await airportController.fetchAirports();
    if (airportController.initialLoading.value) {
      airportController.initialLoading.value = false;
    }

    late Future future = Future(() {});
    for (var i = 0; i < airportController.airportList.length; i++) {
      future = future.then(
        (_) {
          return Future.delayed(
            const Duration(milliseconds: 300),
            () {
              if (listKey.currentState != null) {
                listKey.currentState!.insertItem(
                  i,
                  duration: const Duration(milliseconds: 700),
                );
              }
            },
          );
        },
      );
    }
  }

  Future<void> _loadAnotherPage() async {
    airportController.pageLoading.value = true;
    airportController.initial.value += 10;
    airportController.limit.value += 10;
    if (listKey.currentState != null) {
      await airportController.fetchAirports(listKey: listKey);
    }
    airportController.pageLoading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LazyLoadScrollView(
        onEndOfPage: () => _loadAnotherPage,
        isLoading: airportController.pageLoading.value,
        child: airportController.pageLoading.value
            ? Center(
                child: Lottie.asset('assets/animations/loading.json'),
              )
            : Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AnimatedList(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    key: listKey,
                    itemBuilder: (_, index, animation) {
                      return SlideTransition(
                        position: animation.drive(
                          Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: const Offset(0, 0),
                          ).chain(
                            CurveTween(curve: Curves.ease),
                          ),
                        ),
                        child: Container(
                          color: (index % 2 == 0)
                              ? AppColors.darkblue30
                              : Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 8,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: AirportCardWidget(
                              airportController: airportController,
                              index: index,
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
      ),
    );
  }
}
