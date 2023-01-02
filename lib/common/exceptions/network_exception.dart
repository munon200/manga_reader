import 'package:manga_reader/common/exceptions/app_exception.dart';

class NetworkException extends AppException {
  NetworkException([super.code, super.error]);
}
