import 'package:manga_reader/common/injections/resolver/feature_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_resolver.dart';
import 'package:manga_reader/common/injections/resolver/feature_route.dart';
import 'package:manga_reader/presentation/features/feed/di/feed_injection.dart';
import 'package:manga_reader/presentation/features/feed/di/feed_route.dart';

class FeedResolver extends FeatureResolver {
  FeedResolver._();

  static final FeedResolver _instance = FeedResolver._();

  static FeedResolver get I => _instance;

  @override
  FeatureInjection featureInjection = FeedInjection();

  @override
  FeatureRoute featureRoute = FeedRoute();
}
