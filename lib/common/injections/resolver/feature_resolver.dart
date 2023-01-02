import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_injection.dart';
import 'package:manga_reader/common/injections/resolver/feature_route.dart';

typedef GenerateRoute = Route? Function(RouteSettings settings);

abstract class FeatureResolver {
  abstract FeatureRoute featureRoute;
  abstract FeatureInjection featureInjection;

  Future<GenerateRoute> call(AppInjection injection) async {
    await featureInjection.dependencies(injection);
    return (RouteSettings settings) => featureRoute.onGenerate(
          injection,
          settings,
        );
  }
}
