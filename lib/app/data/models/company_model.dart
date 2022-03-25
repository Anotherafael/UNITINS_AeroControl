class Company {
  final int? id;
  final String? name;

  Company({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      id: map['id'],
      name: map['name'],
    );
  }

  @override
  String toString() {
    return "{ID: $id, NAME: $name}\n";
  }
}
