class ListUtil {
  ListUtil._();

  static List<O> generate<O, I>({
    required List<I>? items,
    required O Function(int index, I value) generated,
    O Function(int index, I value)? separated,
  }) {
    if (items == null) {
      return [];
    }
    List<O> outputs = [];
    for (int index = 0; index < items.length; index++) {
      outputs.add(generated(index, items[index]));

      if (index + 1 < items.length && separated != null) {
        outputs.add(separated(index, items[index]));
      }
    }
    return outputs;
  }
}
