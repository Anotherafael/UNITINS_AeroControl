import 'company_model.dart';

class FlightModel {
  final int? id;
  final int? code;
  final CompanyModel? company;
  final String? fromCity;
  final String? toCity;
  final DateTime? startAt;
  final DateTime? endAt;
  final String? situation;

  FlightModel({
    this.id,
    this.code,
    this.startAt,
    this.endAt,
    this.company,
    this.fromCity,
    this.toCity,
    this.situation,
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
      startAt: DateTime.parse(map['start_at']),
      endAt: DateTime.parse(map['end_at']),
      company: map['company'],
      fromCity: map['from_city'],
      toCity: map['to_city'],
    );
  }

  @override
  String toString() {
    return "{ID: $id, COMPANY: $company, FROM: $fromCity TO: $toCity, START_AT: $startAt END_AT: $endAt}\n";
  }
}
