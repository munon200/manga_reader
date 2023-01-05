part of 'base_context_extension.dart';

extension TextContext on BuildContext {
  TextStyle? get displaySmall => theme.textTheme.displaySmall;

  TextStyle? get displayMedium => theme.textTheme.displayMedium;

  TextStyle? get displayLarge => theme.textTheme.displayLarge;

  TextStyle? get headlineSmall => theme.textTheme.headlineSmall;

  TextStyle? get headlineMedium => theme.textTheme.headlineMedium;

  TextStyle? get headlineLarge => theme.textTheme.headlineLarge;

  TextStyle? get titleSmall => theme.textTheme.titleSmall;

  TextStyle? get titleMedium => theme.textTheme.titleMedium;

  TextStyle? get titleLarge => theme.textTheme.titleLarge;

  TextStyle? get labelSmall => theme.textTheme.labelSmall;

  TextStyle? get labelMedium => theme.textTheme.labelMedium;

  TextStyle? get labelLarge => theme.textTheme.labelLarge;

  TextStyle? get bodySmall => theme.textTheme.bodySmall;

  TextStyle? get bodyMedium => theme.textTheme.bodyMedium;

  TextStyle? get bodyLarge => theme.textTheme.bodyLarge;
}
