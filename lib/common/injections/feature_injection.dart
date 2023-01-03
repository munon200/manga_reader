import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';

typedef GenerateRoute = Route? Function(RouteSettings settings);

abstract class FeatureInjection {
  Future<void> dependencies(AppInjection injection);

  Route? onGenerate(AppInjection injection, RouteSettings settings);

  Future<GenerateRoute> call(AppInjection injection) async {
    await dependencies(injection);
    return (RouteSettings settings) => onGenerate(
          injection,
          settings,
        );
  }
}
