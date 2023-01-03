extension DynamicExtension<T> on T {
  R let<R>(R Function(T self) call) {
    return call(this);
  }

  T also(void Function(T self) call) {
    call(this);
    return this;
  }
}
