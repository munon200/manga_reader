class AppException implements Exception {
  int? code;
  dynamic error;

  AppException([this.code, this.error]);
}
