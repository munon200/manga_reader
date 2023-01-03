import 'package:manga_reader/common/exceptions/app_exception.dart';

class ConnectionException extends AppException {
  ConnectionException([super.code, super.error]);
}
