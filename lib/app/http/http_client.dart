import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/boot/env.dart';

@lazySingleton
class HttpClient {
  final Duration timeout = const Duration(seconds: 45);
  final Dio _dio;
  final AccessTokenService _accessTokenService;

  HttpClient(this._dio, this._accessTokenService);

  @postConstruct
  void init() {
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.validateStatus = (_) => true;
    _dio.options.baseUrl = Env().apiUrl;
    _dio.options.connectTimeout = timeout;
    _dio.options.receiveTimeout = timeout;
    _dio.options.sendTimeout = timeout;
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) => _dio
      .get<T>(path, queryParameters: queryParameters, options: options)
      .onError(
        (_, _) => Response<T>(
          requestOptions: RequestOptions(path: path),
          statusCode: 500,
        ),
      );

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) => _dio
      .post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      )
      .onError(
        (_, _) => Response<T>(
          requestOptions: RequestOptions(path: path),
          statusCode: 500,
        ),
      );

  HttpClient withToken() {
    final token = _accessTokenService.token.valueOrNull;
    if (token == null) {
      _dio.options.headers.remove('Authorization');
    } else {
      _dio.options.headers['Authorization'] = 'Bearer ${token.value}';
    }
    return this;
  }
}
