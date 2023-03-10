import 'package:dio/dio.dart';
import 'package:manga_reader/common/environments/app_env.dart';
import 'package:manga_reader/common/extensions/dynamic_extension.dart';
import 'package:manga_reader/common/networks/interceptors/auth_interceptor.dart';
import 'package:manga_reader/common/networks/interceptors/header_interceptor.dart';
import 'package:manga_reader/common/networks/interceptors/logger_interceptor.dart';
import 'package:manga_reader/common/networks/interceptors/network_interceptor.dart';

class NetworkCreator {
  NetworkCreator._();

  static Dio create({
    required String baseUrl,
    Map<String, dynamic>? headers,
    List<Interceptor>? interceptors,
  }) {
    Dio dio = Dio();

    dio.options.baseUrl = baseUrl;
    dio.options.headers = headers;
    dio.options.sendTimeout = AppEnv.sendTimeOut;
    dio.options.connectTimeout = AppEnv.connectTimeOut;
    dio.options.receiveTimeout = AppEnv.receiveTimeOut;

    dio.interceptors.addAll([
      NetworkInterceptor(),
      AuthInterceptor(),
      HeaderInterceptor(),
      ...interceptors.let((self) {
        if (self != null) {
          return self;
        }

        return [];
      }),
      LoggerInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: printEnv,
      ),
    ]);

    return dio;
  }
}
