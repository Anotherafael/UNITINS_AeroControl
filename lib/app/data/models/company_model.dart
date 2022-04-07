class CompanyModel {
  final int? id;
  final String? name;

  CompanyModel({
    this.id,
    this.name,
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

  @override
  String toString() {
    return "{ID: $id, NAME: $name}\n";
  }
}
