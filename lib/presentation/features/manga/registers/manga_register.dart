import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/app_register.dart';

class MangaRegister extends AppRegister {
  static const home = '/manga';

  @override
  Route? onGenerate(AppInjection injection, RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return Container();
          },
        );
    }
    return null;
  }
}
