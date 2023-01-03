import 'package:manga_reader/data/models/manga/category_model.dart';
import 'package:manga_reader/data/models/manga/chapter_model.dart';

class MangaModel {
  final String id;
  final String iconUrl;
  final String name;
  final String author;
  final String status;
  final String description;

  const MangaModel({
    required this.id,
    required this.iconUrl,
    required this.name,
    required this.author,
    required this.status,
    required this.description,
  });

  MangaModel copyWith({
    String? id,
    String? iconUrl,
    String? name,
    String? author,
    String? status,
    String? description,
  }) {
    return MangaModel(
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

  factory MangaModel.fromMap(Map<String, dynamic> map) {
    return MangaModel(
      id: map['id'] as String,
      iconUrl: map['iconUrl'] as String,
      name: map['name'] as String,
      author: map['author'] as String,
      status: map['status'] as String,
      description: map['description'] as String,
    );
  }
}
