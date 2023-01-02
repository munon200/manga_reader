class AppFlavor {
  final String name;

  const AppFlavor._(this.name);

  factory AppFlavor(String type) {
    if (type == 'dev') {
      return const FlavorDev();
    }
    if (type == 'staging') {
      return const FlavorStaging();
    }
    return const FlavorLive();
  }

  bool get isDev => runtimeType == FlavorDev;

  bool get isLive => runtimeType == FlavorLive;

  bool get isStaging => runtimeType == FlavorStaging;

  TResult when<TResult>({
    required TResult Function() onDev,
    required TResult Function() onLive,
    required TResult Function() onStaging,
  }) {
    if (isDev) {
      return onDev();
    }
    if (isStaging) {
      return onStaging();
    }
    return onLive();
  }
}

// ===========================================================================//
// ===========================================================================//

class FlavorDev extends AppFlavor {
  const FlavorDev() : super._('dev');
}

class FlavorLive extends AppFlavor {
  const FlavorLive() : super._('live');
}

class FlavorStaging extends AppFlavor {
  const FlavorStaging() : super._('staging');
}
