import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../domain/entities/airport_entity.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_fonts.dart';

class AirportCardWidget extends HookWidget {
  final AirportEntity airport;
  const AirportCardWidget({
    Key? key,
    required this.airport,
  }) : super(key: key);

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
                airport.iata,
                style: AppFonts.cardTitleIATAText,
              ),
            ),
            VerticalDivider(
              color: AppColors.white,
              thickness: 2,
            ),
            Flexible(
              child: Text(
                airport.name,
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
