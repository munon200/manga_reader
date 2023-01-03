import 'dart:async';

import 'package:dio/dio.dart';
import 'package:manga_reader/common/exceptions/app_exception.dart';
import 'package:manga_reader/common/exceptions/connection_exception.dart';
import 'package:manga_reader/common/exceptions/network_exception.dart';
import 'package:manga_reader/common/exceptions/parser_exception.dart';
import 'package:manga_reader/common/networks/data_response.dart';

Future<DataResponse<T>> runNetworkGuarded<T>(
  Future<T> Function() run,
) async {
  AppException exception;

  try {
    return DataSuccess(
      response: await run(),
    );
  } on FormatException catch (_) {
    exception = ParserException();
  } on DioError catch (_) {
    switch (_.error.runtimeType) {
      case ConnectionException:
        exception = ConnectionException();
        break;
      default:
        exception = NetworkException();
        break;
    }
  } catch (_) {
    exception = AppException();
  }

  return DataFailure(
    exception: exception,
  );
}
