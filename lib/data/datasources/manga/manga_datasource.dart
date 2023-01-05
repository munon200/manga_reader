import 'package:manga_reader/common/constants/function.dart';
import 'package:manga_reader/common/networks/data_response.dart';
import 'package:manga_reader/data/models/manga/category_model.dart';
import 'package:manga_reader/data/models/manga/manga_model.dart';

abstract class MangaDatasource {
  DataResponse<MangaModel> fetchDetailManga({
    required String id,
  });

  DataResponseList<MangaModel> fetchTopMangas({
    required int page,
    required String type,
  });

  DataResponseList<CategoryModel> fetchCategories({
    required int page,
  });

  DataResponseList<MangaModel> fetchMangaNewUpdates({
    required int page,
  });

  DataResponseList<MangaModel> fetchMangaPopularizes({
    required int page,
  });

  DataResponseList<MangaModel> fetchMangaNominations({
    required int page,
  });
}

class MangaDatasourceImp extends MangaDatasource {
  @override
  DataResponseList<CategoryModel> fetchCategories({
    required int page,
  }) {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  DataResponse<MangaModel> fetchDetailManga({
    required String id,
  }) {
    // TODO: implement fetchDetailManga
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaModel> fetchMangaNewUpdates({
    required int page,
  }) {
    // TODO: implement fetchMangaNewUpdates
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaModel> fetchMangaNominations({
    required int page,
  }) {
    // TODO: implement fetchMangaNominations
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaModel> fetchMangaPopularizes({
    required int page,
  }) {
    // TODO: implement fetchMangaPopularizes
    throw UnimplementedError();
  }

  @override
  DataResponseList<MangaModel> fetchTopMangas({
    required int page,
    required String type,
  }) {
    // TODO: implement fetchTopMangas
    throw UnimplementedError();
  }
}
