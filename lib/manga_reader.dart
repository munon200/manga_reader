import 'package:manga_reader/common/bootstraps/app_bootstrap.dart';
import 'package:manga_reader/presentation/application/app_manga_reader.dart';

void main() => AppBootstrap.start(
      featureResolves: [],
      featureInjections: [],
      builder: (onGenerate) {
        return AppMangaReader(
          initRoute: 'FeedRoute.home',
          generateRoute: onGenerate,
        );
      },
    );
