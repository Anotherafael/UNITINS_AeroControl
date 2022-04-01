import '../../domain/entities/airport_entity.dart';
import 'flight_model.dart';

class Airport {
  final int id;
  final String iata;
  final String name;
  final String location;
  final List<Flight>? flights;

  Airport({
    required this.id,
    required this.iata,
    this.flights,
    required this.name,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'iata': iata,
      'name': name,
      'flights': flights,
      'location': location,
    };
  }

  factory Airport.fromMap(Map<String, dynamic> map) {
    return Airport(
      id: map['id'],
      iata: map['iata'],
      name: map['name'],
      location: map['location'],
    );
  }

  factory Airport.fromEntity(AirportEntity entity) {
    return Airport(
      id: entity.id,
      name: entity.name,
      iata: entity.iata,
      location: entity.location,
    );
  }

  AirportEntity toEntity() => AirportEntity(
        id: id,
        name: name,
        iata: iata,
        location: location,
      );

  @override
  String toString() {
    return "{ID: $id, NAME: $name, LOCATION: $location}\n";
  }
}
