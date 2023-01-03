import 'package:manga_reader/domain/entities/manga/category_entity.dart';
import 'package:manga_reader/domain/entities/manga/chapter_entity.dart';

class MangaEntity {
  final String id;
  final String iconUrl;
  final String name;
  final String author;
  final String status;
  final String description;

  const MangaEntity({
    required this.id,
    required this.iconUrl,
    required this.name,
    required this.author,
    required this.status,
    required this.description,
  });

  MangaEntity copyWith({
    String? id,
    String? iconUrl,
    String? name,
    String? author,
    String? status,
    String? description,
    List<CategoryEntity>? categories,
    List<ChapterEntity>? chapters,
  }) {
    return MangaEntity(
      id: id ?? this.id,
      iconUrl: iconUrl ?? this.iconUrl,
      name: name ?? this.name,
      author: author ?? this.author,
      status: status ?? this.status,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'iconUrl': iconUrl,
      'name': name,
      'author': author,
      'status': status,
      'description': description,
    };
  }

  factory MangaEntity.fromMap(Map<String, dynamic> map) {
    return MangaEntity(
      id: map['id'] as String,
      iconUrl: map['iconUrl'] as String,
      name: map['name'] as String,
      author: map['author'] as String,
      status: map['status'] as String,
      description: map['description'] as String,
    );
  }
}
