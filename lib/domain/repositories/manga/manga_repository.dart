import 'package:manga_reader/common/constants/function.dart';
import 'package:manga_reader/common/networks/data_response.dart';
import 'package:manga_reader/domain/entities/manga/category_entity.dart';
import 'package:manga_reader/domain/entities/manga/manga_entity.dart';

abstract class MangaRepository {
  DataResponse<MangaEntity> fetchDetailManga({
    required String id,
  });

  DataResponseList<MangaEntity> fetchTopMangas({
    required int page,
    required String type,
  });

  DataResponseList<CategoryEntity> fetchCategories({
    required int page,
  });

  DataResponseList<MangaEntity> fetchMangaNewUpdates({
    required int page,
  });

  DataResponseList<MangaEntity> fetchMangaPopularizes({
    required int page,
  });

  DataResponseList<MangaEntity> fetchMangaNominations({
    required int page,
  });
}
