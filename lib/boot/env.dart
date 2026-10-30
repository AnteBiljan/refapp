sealed class Env {
  static Env? _instance;

  final String apiUrl;
  final String appName;

  const Env._(this.apiUrl, this.appName);

  String get env => switch (this) {
    _EnvDev() => 'dev',
    _EnvStaging() => 'staging',
    _EnvProd() => 'prod',
  };

  const factory Env.prod(String apiUrl, String appName) = _EnvProd;
  const factory Env.staging(String apiUrl, String appName) = _EnvStaging;
  const factory Env.dev(String apiUrl, String appName) = _EnvDev;

  factory Env() {
    final existing = _instance;
    if (existing != null) return existing;
    const environment = String.fromEnvironment('ENV');
    const apiUrl = String.fromEnvironment('API_BASE_URL');
    const appName = String.fromEnvironment('APP_NAME');
    final created = switch (environment) {
      'dev' => Env.dev(apiUrl, appName),
      'staging' => Env.staging(apiUrl, appName),
      'prod' => Env.prod(apiUrl, appName),
      _ => throw Exception(
        'Invalid environment "$environment". Launch with --dart-define-from-file.',
      ),
    };
    _instance = created;
    return created;
  }
}

class _EnvDev extends Env {
  const _EnvDev(super.apiUrl, super.appName) : super._();
}

class _EnvStaging extends Env {
  const _EnvStaging(super.apiUrl, super.appName) : super._();
}

class _EnvProd extends Env {
  const _EnvProd(super.apiUrl, super.appName) : super._();
}
