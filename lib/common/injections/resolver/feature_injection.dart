import 'package:manga_reader/common/injections/app_injection.dart';

abstract class FeatureInjection {
  Future<void> dependencies(AppInjection injection);
}