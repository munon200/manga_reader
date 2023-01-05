import 'package:flutter/material.dart';
import 'package:manga_reader/common/constants/app_size.dart';

part 'color_context_extension.dart';

part 'size_context_extension.dart';

part 'text_context_extension.dart';

extension BaseContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;
}
