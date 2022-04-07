import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../domain/entities/airport_entity.dart';
import '../../../shared/theme/app_colors.dart';
import '../components/airport_card_widget.dart';

class AirportListWidget extends HookWidget {
  final ValueNotifier<List<AirportEntity>> airportList;

  const AirportListWidget({
    Key? key,
    required this.airportList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<AirportEntity>>(
      valueListenable: airportList,
      builder: (_, value, __) {
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (_, index) {
            final airport = value[index];
            return Container(
              color:
                  (index % 2 == 0) ? AppColors.darkblue30 : Colors.transparent,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AirportCardWidget(
                  airport: airport,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
