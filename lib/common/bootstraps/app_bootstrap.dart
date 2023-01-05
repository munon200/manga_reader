import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/app_register.dart';

class AppBootstrap {
  AppBootstrap._();

  static Future<void> start({
    required Function(GenerateRoute) builder,
    List<AppRegister>? appRegisters,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();

    List<GenerateRoute> routeGenerates = [];
    if (appRegisters != null) {
      for (var register in appRegisters) {
        routeGenerates.add(
          await register.call(
            AppInjection.I,
          ),
        );
      }
    }

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
