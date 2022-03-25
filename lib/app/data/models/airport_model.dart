import 'flight_model.dart';

class Airport {
  final int? id;
  final String? iata;
  final String? name;
  final String? location;
  final List<Flight>? flights;

  Airport({
    this.id,
    this.iata,
    this.flights,
    this.name,
    this.location,
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

  @override
  String toString() {
    return "{ID: $id, NAME: $name, LOCATION: $location}\n";
  }
}
