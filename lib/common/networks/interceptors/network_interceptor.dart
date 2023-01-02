import 'package:dio/dio.dart';
import 'package:manga_reader/common/exceptions/connection_exception.dart';
import 'package:manga_reader/common/networks/network_connection.dart';

class NetworkInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (await NetworkConnection.call()) {
      handler.next(options);
    } else {
      handler.reject(ConnectionException());
    }
  }
}
