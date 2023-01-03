class CategoryEntity {
  final String id;
  final String iconUrl;
  final String name;
  final String description;

  const CategoryEntity({
    required this.id,
    required this.iconUrl,
    required this.name,
    required this.description,
  });

  CategoryEntity copyWith({
    String? id,
    String? iconUrl,
    String? name,
    String? description,
  }) {
    return CategoryEntity(
      id: id ?? this.id,
      iconUrl: iconUrl ?? this.iconUrl,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'iconUrl': iconUrl,
      'name': name,
      'description': description,
    };
  }

  factory CategoryEntity.fromMap(Map<String, dynamic> map) {
    return CategoryEntity(
      id: map['id'] as String,
      iconUrl: map['iconUrl'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }
}
