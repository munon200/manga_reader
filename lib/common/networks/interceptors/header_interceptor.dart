import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = headers(options.baseUrl)
      ..addAll(
        options.headers,
      );

    handler.next(options);
  }

  Map<String, dynamic> headers(String baseUrl) {
    return {
      'Referer': baseUrl,
      'User-Agent':
          'Mozilla/5.0 (X11; Linux x86_64; rv:108.0) Gecko/20100101 Firefox/108.0'
    };
  }
}
