import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';

typedef GenerateRoute = Route? Function(RouteSettings settings);

abstract class AppRegister {
  Future<void> dependencies(AppInjection injection) async {
    return;
  }

  Route? onGenerate(AppInjection injection, RouteSettings settings) {
    return null;
  }

  Future<GenerateRoute> call(AppInjection injection) async {
    await dependencies(injection);
    return (RouteSettings settings) => onGenerate(
          injection,
          settings,
        );
  }
}
