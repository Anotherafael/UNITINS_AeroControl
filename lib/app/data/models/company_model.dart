import '../../domain/entities/company_entity.dart';

class CompanyModel {
  final int id;
  final String name;

  CompanyModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory CompanyModel.fromMap(Map<String, dynamic> map) {
    return CompanyModel(
      id: map['id'],
      name: map['name'],
    );
  }

  factory CompanyModel.fromEntity(CompanyEntity entity) {
    return CompanyModel(
      id: entity.id,
      name: entity.name,
    );
  }

  CompanyEntity toEntity() => CompanyEntity(
        id: id,
        name: name,
      );

  @override
  String toString() {
    return "{ID: $id, NAME: $name}\n";
  }
}
