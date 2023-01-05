import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/app_register.dart';
import 'package:manga_reader/presentation/themes/app_theme.dart';

class AppMangaReader extends StatelessWidget {
  final String initRoute;
  final GenerateRoute generateRoute;

  const AppMangaReader({
    Key? key,
    required this.initRoute,
    required this.generateRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initRoute,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      onGenerateRoute: generateRoute,
    );
  }
}
