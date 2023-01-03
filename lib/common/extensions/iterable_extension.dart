extension IterableExtension<R> on Iterable<R>? {
  int get count => this?.length ?? 0;

  bool get isNullOrEmpty {
    return this != null ? this!.isEmpty : true;
  }

  bool get isNotNullOrEmpty {
    return this != null ? this!.isNotEmpty : false;
  }

  R? getOrNull(int index) {
    try {
      return this?.elementAt(index);
    } catch (_) {
      return null;
    }
  }

  R? get firstOrNull {
    try {
      return this?.first;
    } catch (_) {
      return null;
    }
  }

  R? get lastOrNull {
    try {
      return this?.last;
    } catch (_) {
      return null;
    }
  }

  List<T> generate<T>({
    required T Function(int index, R value) item,
    T? Function(int index, R value)? separate,
  }) {
    List<T> itemTransforms = [];

    if ((this?.length ?? 0) < 1) {
      return itemTransforms;
    }

    for (var index = 0; index < (this?.length ?? 0); index++) {
      itemTransforms.add(item(index, this!.elementAt(index)));

      if (index < (count - 1) && separate != null) {
        var separateValue = separate(index, this!.elementAt(index));
        if (separateValue != null) {
          itemTransforms.add(separateValue);
        }
      }
    }

    return itemTransforms;
  }
}
