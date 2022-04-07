import '../../domain/entities/flight_entity.dart';
import 'company_model.dart';

class FlightModel {
  final int id;
  final int code;
  final CompanyModel company;
  final String fromCity;
  final String toCity;
  final DateTime startAt;
  final DateTime endAt;
  final String status;

  FlightModel({
    required this.id,
    required this.code,
    required this.startAt,
    required this.endAt,
    required this.company,
    required this.fromCity,
    required this.toCity,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'start_at': startAt,
      'end_at': endAt,
      'company': company,
      'from_city': fromCity,
      'to_city': toCity,
    };
  }

  factory FlightModel.fromMap(Map<String, dynamic> map) {
    return FlightModel(
      id: map['id'],
      code: map['code'],
      startAt: DateTime.parse(map['start_at']),
      endAt: DateTime.parse(map['end_at']),
      company: map['company'],
      fromCity: map['from_city'],
      toCity: map['to_city'],
      status: map['status'],
    );
  }

  factory FlightModel.fromEntity(FlightEntity entity) {
    return FlightModel(
      id: entity.id,
      code: entity.code,
      company: CompanyModel.fromEntity(entity.company),
      fromCity: entity.fromCity,
      toCity: entity.toCity,
      startAt: entity.startAt,
      endAt: entity.endAt,
      status: entity.status,
    );
  }

  FlightEntity toEntity() => FlightEntity(
        id: id,
        code: code,
        company: company.toEntity(),
        fromCity: fromCity,
        toCity: toCity,
        startAt: startAt,
        endAt: endAt,
        status: status,
      );

  @override
  String toString() {
    return "{ID: $id, COMPANY: $company, FROM: $fromCity TO: $toCity, START_AT: $startAt END_AT: $endAt}\n";
  }
}
