import '../../domain/entities/airport_entity.dart';

class AirportModel {
  final int id;
  final String iata;
  final String name;
  final String location;

  AirportModel({
    required this.id,
    required this.iata,
    required this.name,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'iata': iata,
      'name': name,
      'location': location,
    };
  }

  factory AirportModel.fromMap(Map<String, dynamic> map) {
    return AirportModel(
      id: map['id'],
      iata: map['iata'],
      name: map['name'],
      location: map['location'],
    );
  }

  factory AirportModel.fromEntity(AirportEntity entity) {
    return AirportModel(
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
