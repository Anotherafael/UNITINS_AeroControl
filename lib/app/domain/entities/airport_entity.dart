import 'package:equatable/equatable.dart';

import 'flight_entity.dart';

class AirportEntity extends Equatable {
  final int id;
  final String iata;
  final String name;
  final String location;
  final List<FlightEntity>? flights;

  const AirportEntity({
    required this.id,
    required this.iata,
    this.flights,
    required this.name,
    required this.location,
  });

  @override
  List<Object?> get props => [
        id,
        iata,
        name,
        location,
        flights,
      ];
}
