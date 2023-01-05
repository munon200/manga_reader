import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/app_register.dart';
import 'package:manga_reader/data/datasources/manga/manga_datasource.dart';
import 'package:manga_reader/data/repositories/manga/manga_repository.dart';
import 'package:manga_reader/domain/repositories/manga/manga_repository.dart';

class DataRegister extends AppRegister {
  @override
  Future<void> dependencies(AppInjection injection) async {
    await dependenciesDatasources(injection);
    await dependenciesRepositories(injection);
  }

  Future<void> dependenciesDatasources(AppInjection injection) async {
    injection.lazySingleton<MangaDatasource>(
      () => MangaDatasourceImp(),
    );
  }

  Future<void> dependenciesRepositories(AppInjection injection) async {
    injection.lazySingleton<MangaRepository>(
      () => MangaRepositoryImp(),
    );
  }
}
