import 'package:flutter/material.dart';

import '../../../../domain/entities/flight_entity.dart';
import '../../../shared/theme/app_colors.dart';
import 'flight_card_widget.dart';

class FlightListWidget extends StatelessWidget {
  final ValueNotifier<List<FlightEntity>> flightList;

  const FlightListWidget({
    Key? key,
    required this.flightList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<FlightEntity>>(
      valueListenable: flightList,
      builder: (_, value, __) {
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (_, index) {
            final flight = value[index];
            return Container(
              color:
                  (index % 2 == 0) ? AppColors.darkblue30 : Colors.transparent,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FlightCardWidget(
                  flight: flight,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
