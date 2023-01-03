import 'package:manga_reader/common/extensions/iterable_extension.dart';

extension MapExtension<K, V> on Map<K, V>? {
  int get count => this?.length ?? 0;

  Map<K, V> get getOrEmpty => this ?? {};

  bool get isNullOrEmpty {
    return this != null ? this!.isEmpty : true;
  }

  bool get isNotNullOrEmpty {
    return this != null ? this!.isNotEmpty : false;
  }

  V? getOrNull(K key) {
    try {
      return this?[key];
    } catch (_) {
      return null;
    }
  }

  V? get firstOrNull {
    try {
      return this?.values.first;
    } catch (_) {
      return null;
    }
  }

  V? get lastOrNull {
    try {
      return this?.values.last;
    } catch (_) {
      return null;
    }
  }

  List<T> generate<T>({
    required T Function(K key, V value) item,
    T? Function(K key, V value)? separate,
  }) {
    List<T> itemTransforms = [];

    if (count < 1) {
      return itemTransforms;
    }

    var entries = getOrEmpty.entries;
    for (var index = 0; index < entries.count; index++) {
      var entry = entries.elementAt(index);
      itemTransforms.add(item(entry.key, entry.value));

      if (index < (count - 1) && separate != null) {
        var separateValue = separate(entry.key, entry.value);
        if (separateValue != null) {
          itemTransforms.add(separateValue);
        }
      }
    }

    return itemTransforms;
  }
}
