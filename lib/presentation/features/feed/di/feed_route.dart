import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_route.dart';
import 'package:manga_reader/presentation/features/feed/screens/home/home_screen.dart';

class FeedRoute extends FeatureRoute {
  static const String home = '/home';

  @override
  Route? onGenerate(AppInjection injection, RouteSettings settings) {
    switch (settings.name) {
      case home:
        return materialPageRoute(
          settings: settings,
          child: const HomeScreen(),
        );
    }
    return null;
  }
}
