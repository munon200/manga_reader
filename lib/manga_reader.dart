import 'package:manga_reader/common/bootstraps/app_bootstrap.dart';
import 'package:manga_reader/data/registers/data_register.dart';
import 'package:manga_reader/domain/registers/domain_register.dart';
import 'package:manga_reader/presentation/application/app_manga_reader.dart';
import 'package:manga_reader/presentation/features/feed/registers/feed_register.dart';
import 'package:manga_reader/presentation/features/manga/registers/manga_register.dart';

void main() => AppBootstrap.start(
      appRegisters: [
        DataRegister(),
        DomainRegister(),
        FeedRegister(),
        MangaRegister(),
      ],
      builder: (onGenerate) {
        return AppMangaReader(
          initRoute: FeedRegister.home,
          generateRoute: onGenerate,
        );
      },
    );
