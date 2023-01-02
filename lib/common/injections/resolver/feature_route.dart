import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';

abstract class FeatureRoute {
  Route? onGenerate(AppInjection injection, RouteSettings settings);

  MaterialPageRoute<T> materialPageRoute<T>({
    required RouteSettings settings,
    required Widget child,
  }) {
    return MaterialPageRoute(
      settings: settings,
      builder: (builder) => child,
    );
  }
}
