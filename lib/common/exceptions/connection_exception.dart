import 'package:dio/dio.dart';
import 'package:manga_reader/common/exceptions/app_exception.dart';

class ConnectionException extends DioError implements AppException {
  @override
  int? code;

  ConnectionException() : super(requestOptions: RequestOptions(path: ''));

  @override
  String toString() {
    return 'Instance of $runtimeType';
  }
}
