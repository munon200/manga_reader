import 'package:flutter/material.dart';
import 'package:manga_reader/common/injections/feature_injection.dart';

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
      onGenerateRoute: generateRoute,
    );
  }
}
