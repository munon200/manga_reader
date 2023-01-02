import 'package:manga_reader/common/environments/app_env.dart';
import 'package:manga_reader/common/loggers/logger/logger.dart';

class AppLoggerFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return AppEnv.I.logger;
  }
}