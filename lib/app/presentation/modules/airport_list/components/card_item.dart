import 'package:flutter/material.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_fonts.dart';
import '../controller/airport_list_controller.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.airportController,
    required this.index,
  }) : super(key: key);

  final AirportListController airportController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 40,
              child: Text(
                airportController.airportList[index].iata,
                style: AppFonts.cardTitleIATAText,
              ),
            ),
            VerticalDivider(
              color: AppColors.white,
              thickness: 2,
            ),
            Flexible(
              child: Text(
                airportController.airportList[index].name,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.cardTitleText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
