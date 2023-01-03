class CategoryModel {
  final String id;
  final String iconUrl;
  final String name;
  final String description;

  const CategoryModel({
    required this.id,
    required this.iconUrl,
    required this.name,
    required this.description,
  });

  CategoryModel copyWith({
    String? id,
    String? iconUrl,
    String? name,
    String? description,
  }) {
    return CategoryModel(
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

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as String,
      iconUrl: map['iconUrl'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }
}
