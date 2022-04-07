import 'package:equatable/equatable.dart';

import 'company_entity.dart';

class FlightEntity extends Equatable {
  final int id;
  final int code;
  final CompanyEntity company;
  final String fromCity;
  final String toCity;
  final DateTime startAt;
  final DateTime endAt;
  final String status;

  const FlightEntity({
    required this.id,
    required this.code,
    required this.company,
    required this.fromCity,
    required this.toCity,
    required this.startAt,
    required this.endAt,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        code,
        company,
        fromCity,
        toCity,
        startAt,
        endAt,
        status,
      ];
}
