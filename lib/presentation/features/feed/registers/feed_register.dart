import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_injection.dart';
import 'package:manga_reader/common/injections/app_register.dart';
import 'package:manga_reader/presentation/features/feed/screens/home/home_screen.dart';

class FeedRegister extends AppRegister {
  static const home = '/';

  @override
  Route? onGenerate(AppInjection injection, RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        );
    }
    return null;
  }
}
