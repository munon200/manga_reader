import 'package:manga_reader/common/environments/app_flavor.dart';

class AppEnv {
  String get appFlavor => 'dev';

  String get appLogger => 'true';

  String get appLanguage => 'vi';

  String get appCurrency => 'vnd';

  String get appDateFormat => 'dd/MM/yyyy';

  String get appSendTimeOut => '6000';

  String get appReceiveTimeOut => '6000';

  String get appConnectTimeOut => '6000';

  // ===========================================================================
  // ===========================================================================

  AppEnv._();

  static final AppEnv _instance = AppEnv._();

  static AppEnv get I => _instance;

  Map<String, String> get appPaths => flavor.when(
        onDev: () => {},
        onLive: () => {},
        onStaging: () => {},
      );

  Map<String, String> get appKeys => flavor.when(
        onDev: () => {},
        onLive: () => {},
        onStaging: () => {},
      );

  Map<String, String> get appExtras => flavor.when(
        onDev: () => {},
        onLive: () => {},
        onStaging: () => {},
      );

  AppFlavor get flavor => AppFlavor(appFlavor);

  bool get logger => appLogger == 'true';

  String get language => appLanguage;

  String get currency => appCurrency;

  String get dateFormat => appDateFormat;

  String get uuid => hashCode.toString();

  String getKey(String key) => appKeys[key] ?? '';

  String getPath(String key) => appPaths[key] ?? '';

  String getExtra(String key) => appExtras[key] ?? '';

  int get sendTimeOut => int.parse(appSendTimeOut);

  int get receiveTimeOut => int.parse(appReceiveTimeOut);

  int get connectTimeOut => int.parse(appConnectTimeOut);
}
