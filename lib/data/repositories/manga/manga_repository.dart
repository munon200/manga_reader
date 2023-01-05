import 'package:manga_reader/common/constants/function.dart';
import 'package:manga_reader/common/networks/data_response.dart';
import 'package:manga_reader/domain/entities/manga/category_entity.dart';
import 'package:manga_reader/domain/entities/manga/manga_entity.dart';
import 'package:manga_reader/domain/repositories/manga/manga_repository.dart';

class MangaRepositoryImp extends MangaRepository {
  @override
  DataResponseList<CategoryEntity> fetchCategories({
    required int page,
  }) {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  DataResponse<MangaEntity> fetchDetailManga({
    required String id,
  }) {
    // TODO: implement fetchDetailManga
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaEntity> fetchMangaNewUpdates({
    required int page,
  }) {
    // TODO: implement fetchMangaNewUpdates
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaEntity> fetchMangaNominations({
    required int page,
  }) {
    // TODO: implement fetchMangaNominations
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaEntity> fetchMangaPopularizes({
    required int page,
  }) {
    // TODO: implement fetchMangaPopularizes
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaEntity> fetchTopMangas({
    required int page,
    required String type,
  }) {
    // TODO: implement fetchTopMangas
    throw UnimplementedError();
  }
}
