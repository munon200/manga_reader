import 'package:manga_reader/common/bootstraps/app_bootstrap.dart';
import 'package:manga_reader/presentation/application/app_manga_reader.dart';
import 'package:manga_reader/presentation/features/feed/di/feed_resolver.dart';
import 'package:manga_reader/presentation/features/feed/di/feed_route.dart';

void main() => AppBootstrap.start(
      featureResolves: [
        FeedResolver.I,
      ],
      featureInjections: [],
      builder: (onGenerate) {
        return AppMangaReader(
          initRoute: FeedRoute.home,
          generateRoute: onGenerate,
        );
      },
    );
