class ChapterEntity {
  final String id;
  final String name;
  final String url;
  final int number;

  const ChapterEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.number,
  });

  ChapterEntity copyWith({
    String? id,
    String? idManga,
    String? name,
    String? url,
    int? number,
  }) {
    return ChapterEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'number': number,
    };
  }

  factory ChapterEntity.fromMap(Map<String, dynamic> map) {
    return ChapterEntity(
      id: map['id'] as String,
      name: map['name'] as String,
      url: map['url'] as String,
      number: map['number'] as int,
    );
  }
}
