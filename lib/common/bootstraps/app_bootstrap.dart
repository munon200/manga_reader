import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_injection.dart';
import 'package:manga_reader/common/injections/feature_injection.dart';

class AppBootstrap {
  AppBootstrap._();

  static Future<void> start({

    required Function(GenerateRoute) builder,
    List<FeatureInjection>? featureInjections,
    List<FeatureInjection>? featureResolves,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();

    // Register dependencies
    if (featureInjections != null) {
      for (var moduleInjection in featureInjections) {
        await moduleInjection.dependencies(
          AppInjection.I,
        );
      }
    }

    // Register and get generate route
    List<GenerateRoute> routeGenerates = [];
    if (featureResolves != null) {
      for (var featureResolver in featureResolves) {
        routeGenerates.add(
          await featureResolver.call(
            AppInjection.I,
          ),
        );
      }
    }

    // Merger generate route
    Route? onGenerate(settings) {
      for (var generate in routeGenerates) {
        Route? route = generate(settings);
        if (route != null) {
          return route;
        }
      }
      return null;
    }

    // Start app
    runApp(builder(
      onGenerate,
    ));
  }
}
