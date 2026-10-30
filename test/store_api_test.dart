import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:refapp/app/shared/store_api.dart';

void main() {
  const api = _Api();

  test('resource mapper accepts a DummyJSON object', () {
    final response = Response<dynamic>(
      requestOptions: RequestOptions(path: '/products'),
      statusCode: 200,
      data: {
        'products': <Object>[],
        'total': 0,
        'skip': 0,
        'limit': 20,
      },
    );

    final result = api.toResourceResponse(response);

    expect(
      result.mapOrNull(success: (success) => success.data['total']),
      0,
    );
  });

  test('resource mapper reads the error message', () {
    final response = Response<dynamic>(
      requestOptions: RequestOptions(path: '/auth/login'),
      statusCode: 400,
      data: {'message': 'Invalid credentials'},
    );

    final result = api.toResourceResponse(response);

    expect(
      result.mapOrNull(failed: (failed) => failed.message),
      'Invalid credentials',
    );
  });
}

class _Api extends StoreApi {
  const _Api();
}
