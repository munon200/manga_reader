import 'package:manga_reader/common/environments/app_data.dart';
import 'package:manga_reader/common/environments/app_flavor.dart';

class AppEnv {
  static AppFlavor get flavor => AppFlavor(AppData.appFlavor);

  static String get language => AppData.appLanguage;

  static String get currency => AppData.appCurrency;

  static String get dateFormat => AppData.appDateFormat;

  static String get uuid => AppData.appUUID;

  static bool get logger => AppData.appLogger;

  static int get sendTimeOut => AppData.appSendTimeOut;

  static int get receiveTimeOut => AppData.appReceiveTimeOut;

  static int get connectTimeOut => AppData.appConnectTimeOut;

  static String getKey(String key) {
    var value = AppData.appKeys[_convertKey(key)];
    if (value == null) {
      return AppData.appKeys[key] ?? '';
    } else {
      return value;
    }
  }

  static String getPath(String key) {
    var value = AppData.appPaths[_convertKey(key)];
    if (value == null) {
      return AppData.appPaths[key] ?? '';
    } else {
      return value;
    }
  }

  static String getExtra(String key) {
    var value = AppData.appExtras[_convertKey(key)];
    if (value == null) {
      return AppData.appExtras[key] ?? '';
    } else {
      return value;
    }
  }

  static String _convertKey(String key) {
    return flavor.when(
      onDev: () => '${key}_dev',
      onLive: () => '${key}_live',
      onStaging: () => '${key}_staging',
    );
  }
}
