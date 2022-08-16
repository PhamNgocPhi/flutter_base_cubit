enum EnvironmentType {
  development,
  production,
  staging,
}

class AppEnvironment {
  final EnvironmentType environmentType;
  final String baseUrl;
  final int connectTimeout;
  final int receiveTimeout;
  final int sendTimeout;

  AppEnvironment._({
    required this.environmentType,
    required this.baseUrl,
    required this.connectTimeout,
    required this.receiveTimeout,
    required this.sendTimeout,
  });

  static AppEnvironment? _current;

  static AppEnvironment get current {
    assert(_current != null, 'No instance of Environment was set');
    return _current!;
  }

  static initEnvironment(EnvironmentType environmentType) {
    switch (environmentType) {
      case EnvironmentType.development:
        _current = AppEnvironment._(
          environmentType: environmentType,
          baseUrl: "",
          connectTimeout: 30000,
          receiveTimeout: 30000,
          sendTimeout: 30000,
        );
        break;
      case EnvironmentType.staging:
        _current = AppEnvironment._(
          environmentType: environmentType,
          baseUrl: "",
          connectTimeout: 30000,
          receiveTimeout: 30000,
          sendTimeout: 30000,
        );
        break;
      case EnvironmentType.production:
        _current = AppEnvironment._(
          environmentType: environmentType,
          baseUrl: "",
          connectTimeout: 30000,
          receiveTimeout: 30000,
          sendTimeout: 30000,
        );
        break;
    }
  }
}
