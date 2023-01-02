import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_resolver.dart';

class AppBootstrap {
  AppBootstrap._();

  static Future<void> start({
    required Function(GenerateRoute) builder,
    List<FeatureInjection>? featureInjections,
    List<FeatureResolver>? featureResolves,
  }) async {
    /*
    * Init widget binding of Flutter
    * */
    WidgetsFlutterBinding.ensureInitialized();

    /*
    * Register dependency
    * */
    if (featureInjections != null) {
      for (var moduleInjection in featureInjections) {
        await moduleInjection.dependencies(
          AppInjection.I,
        );
      }
    }

    /*
    * Register dependency and get route of module
    * */
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

    /*
    * Generate function [onGenerate]
    * */
    Route? onGenerate(settings) {
      for (var generate in routeGenerates) {
        Route? route = generate(settings);
        if (route != null) {
          return route;
        }
      }
      return null;
    }

    /*
    * Start app with config
    * */
    runApp(builder(
      onGenerate,
    ));
  }
}
