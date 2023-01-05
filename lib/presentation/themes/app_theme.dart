import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/themes/schemes/dark_color_scheme.dart';
import 'package:manga_reader/presentation/themes/schemes/light_color_scheme.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
  );
}
