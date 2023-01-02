import 'package:manga_reader/common/loggers/app_logger_filter.dart';
import 'package:manga_reader/common/loggers/logger/logger.dart';

class AppLogger {
  static final Logger logger = Logger(
    filter: AppLoggerFilter(),
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  static loggerE(String? message, [dynamic error, StackTrace? stackTrace]) {
    logger.e(message, error, stackTrace);
  }

  static loggerI(String? message, [dynamic error, StackTrace? stackTrace]) {
    logger.i(message, error, stackTrace);
  }

  static loggerV(String? message, [dynamic error, StackTrace? stackTrace]) {
    logger.v(message, error, stackTrace);
  }

  static loggerW(String? message, [dynamic error, StackTrace? stackTrace]) {
    logger.w(message, error, stackTrace);
  }

  static loggerWTF(String? message, [dynamic error, StackTrace? stackTrace]) {
    logger.wtf(message, error, stackTrace);
  }
}
