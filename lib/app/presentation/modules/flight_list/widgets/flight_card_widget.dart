import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/flight_entity.dart';
import '../../../shared/theme/app_fonts.dart';

class FlightCardWidget extends HookWidget {
  final FlightEntity flight;
  const FlightCardWidget({
    Key? key,
    required this.flight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    child: Text(
                  flight.company.name.toUpperCase(),
                  style: AppFonts.flightCardTitleText,
                )),
                SizedBox(
                    child: Text(
                  flight.code.toString(),
                  style: AppFonts.flightCardTitleText,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat("dd/MM/yyyy").format(flight.endAt),
                  style: AppFonts.flightCardDateText,
                ),
                Text(
                  DateFormat("hh:mm").format(flight.endAt),
                  style: AppFonts.flightCardDateText,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Text(
                    flight.status,
                    style: AppFonts.flightCardDateText,
                  ),
                ),
                Text(
                  flight.toCity,
                  style: AppFonts.flightCardDateText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
