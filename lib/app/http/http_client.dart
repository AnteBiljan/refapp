import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/boot/env.dart';

@lazySingleton
class HttpClient {
  static const skipAuthRefreshExtra = 'skipAuthRefresh';
  static const _requiresAuthExtra = 'requiresAuth';
  static const _retriedExtra = 'retried';

  final Duration timeout = const Duration(seconds: 45);
  final Dio _dio;
  final AccessTokenService _accessTokenService;
  Future<bool> Function()? _refreshSession;
  bool _authorizeNext = false;

  HttpClient(this._dio, this._accessTokenService);

  void bindSessionRefresher(Future<bool> Function() refreshSession) {
    _refreshSession = refreshSession;
  }

  @postConstruct
  void init() {
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.validateStatus = (_) => true;
    _dio.options.baseUrl = Env().apiUrl;
    _dio.options.connectTimeout = timeout;
    _dio.options.receiveTimeout = timeout;
    _dio.options.sendTimeout = timeout;
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          if (_skipsRefresh(options) || !_requiresAuth(options)) {
            handler.next(options);
            return;
          }
          if (!await _ensureAccessToken()) {
            handler.reject(
              DioException(
                requestOptions: options,
                message: 'Session expired',
                type: DioExceptionType.cancel,
              ),
            );
            return;
          }
          _applyAuthorization(options);
          handler.next(options);
        },
        onResponse: (response, handler) async {
          final options = response.requestOptions;
          final status = response.statusCode ?? 0;
          if (status != 401 ||
              _skipsRefresh(options) ||
              !_requiresAuth(options) ||
              options.extra[_retriedExtra] == true) {
            handler.next(response);
            return;
          }
          final failedToken = _bearer(options);
          final current = _accessTokenService.token.valueOrNull;
          final alreadyRefreshed =
              current != null &&
              !current.isExpired &&
              failedToken != null &&
              failedToken != current.value;
          if (!alreadyRefreshed && !await _refreshAccessToken()) {
            handler.next(response);
            return;
          }
          options.extra[_retriedExtra] = true;
          _applyAuthorization(options);
          try {
            final retry = await _dio.fetch<dynamic>(options);
            handler.resolve(retry);
          } catch (_) {
            handler.next(response);
          }
        },
      ),
    );
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    final requestOptions = _applyRequestOptions(options);
    return _dio
        .get<T>(path, queryParameters: queryParameters, options: requestOptions)
        .onError(
          (_, _) => Response<T>(
            requestOptions: RequestOptions(path: path),
            statusCode: 500,
          ),
        );
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    final requestOptions = _applyRequestOptions(options);
    return _dio
        .post<T>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: requestOptions,
        )
        .onError(
          (_, _) => Response<T>(
            requestOptions: RequestOptions(path: path),
            statusCode: 500,
          ),
        );
  }

  HttpClient withToken() {
    _authorizeNext = true;
    return this;
  }

  Options _applyRequestOptions(Options? options) {
    final authorize = _authorizeNext;
    _authorizeNext = false;
    final extra = Map<String, dynamic>.from(options?.extra ?? const {});
    if (authorize) extra[_requiresAuthExtra] = true;
    if (options == null) return Options(extra: extra);
    return options.copyWith(extra: extra);
  }

  bool _requiresAuth(RequestOptions options) =>
      options.extra[_requiresAuthExtra] == true;

  bool _skipsRefresh(RequestOptions options) {
    if (options.extra[skipAuthRefreshExtra] == true) return true;
    return options.path == '/auth/login' || options.uri.path == '/auth/login';
  }

  Future<bool> _ensureAccessToken() async {
    final token = _accessTokenService.token.valueOrNull;
    if (token != null && !token.isExpired) return true;
    return _refreshAccessToken();
  }

  Future<bool> _refreshAccessToken() async {
    final refreshSession = _refreshSession;
    if (refreshSession == null) return false;
    final refreshed = await refreshSession();
    if (!refreshed) return false;
    final token = _accessTokenService.token.valueOrNull;
    return token != null && !token.isExpired;
  }

  void _applyAuthorization(RequestOptions options) {
    final token = _accessTokenService.token.valueOrNull;
    if (token == null) {
      options.headers.remove('Authorization');
      return;
    }
    options.headers['Authorization'] = 'Bearer ${token.value}';
  }

  String? _bearer(RequestOptions options) {
    final header = options.headers['Authorization'];
    if (header is! String || !header.startsWith('Bearer ')) return null;
    return header.substring('Bearer '.length);
  }
}
