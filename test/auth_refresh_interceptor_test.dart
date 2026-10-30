import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:refapp/app/http/http_client.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Dio dio;
  late HttpClient http;
  late AccessTokenService tokens;

  setUp(() {
    dio = Dio();
    tokens = AccessTokenService();
    tokens.storeAccessToken('');
    http = HttpClient(dio, tokens)..init();
  });

  test('refreshes a missing access token before the original call', () async {
    final calls = <String>[];
    dio.interceptors.add(_scripted(calls));
    var refreshes = 0;
    http.bindSessionRefresher(() async {
      refreshes++;
      final response = await http.post<dynamic>(
        '/auth/refresh',
        options: Options(extra: {HttpClient.skipAuthRefreshExtra: true}),
      );
      if (response.statusCode != 200) return false;
      tokens.storeAccessToken(_jwt(const Duration(minutes: 30)));
      return true;
    });

    final response = await http.withToken().get<dynamic>('/products');

    expect(refreshes, 1);
    expect(response.statusCode, 200);
    expect(calls, ['/auth/refresh', '/products']);
    expect(calls.where((path) => path == '/auth/refresh'), hasLength(1));
  });

  test('retries the original call once after a 401', () async {
    tokens.storeAccessToken(_jwt(const Duration(minutes: 30)));
    final calls = <String>[];
    var productAttempts = 0;
    dio.httpClientAdapter = _Adapter((options) async {
      calls.add(options.path);
      if (options.path == '/auth/refresh') {
        return _jsonBody(200);
      }
      productAttempts++;
      return _jsonBody(productAttempts == 1 ? 401 : 200);
    });
    var refreshes = 0;
    http.bindSessionRefresher(() async {
      refreshes++;
      await http.post<dynamic>(
        '/auth/refresh',
        options: Options(extra: {HttpClient.skipAuthRefreshExtra: true}),
      );
      tokens.storeAccessToken(_jwt(const Duration(minutes: 30)));
      return true;
    });

    final response = await http.withToken().get<dynamic>('/products');

    expect(refreshes, 1);
    expect(productAttempts, 2);
    expect(response.statusCode, 200);
    expect(calls.where((path) => path == '/auth/refresh'), hasLength(1));
  });

  test('does not retry when refresh fails', () async {
    var refreshes = 0;
    http.bindSessionRefresher(() async {
      refreshes++;
      return false;
    });

    final response = await http.withToken().get<dynamic>('/products');

    expect(refreshes, 1);
    expect(response.statusCode, 500);
  });
}

InterceptorsWrapper _scripted(List<String> calls) {
  return InterceptorsWrapper(
    onRequest: (options, handler) {
      calls.add(options.path);
      final authorized = options.headers['Authorization'] != null;
      handler.resolve(
        Response(
          requestOptions: options,
          statusCode: options.path == '/auth/refresh' || authorized ? 200 : 401,
          data: const {'ok': true},
        ),
      );
    },
  );
}

ResponseBody _jsonBody(int status) {
  return ResponseBody.fromString(
    '{"ok":true}',
    status,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );
}

class _Adapter implements HttpClientAdapter {
  final Future<ResponseBody> Function(RequestOptions options) _fetch;

  _Adapter(this._fetch);

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) {
    return _fetch(options);
  }

  @override
  void close({bool force = false}) {}
}

String _jwt(Duration lifetime) {
  final exp =
      DateTime.now().toUtc().add(lifetime).millisecondsSinceEpoch ~/ 1000;
  final header = base64Url.encode(utf8.encode('{"alg":"none"}'));
  final payload = base64Url.encode(utf8.encode('{"exp":$exp}'));
  return '$header.$payload.x';
}
