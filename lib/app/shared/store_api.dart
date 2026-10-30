import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_api.freezed.dart';

abstract class StoreApi {
  const StoreApi();

  ApiResponse toApiResponse(Response<dynamic> response) {
    final result = response.data;
    if (result is! Map<String, dynamic>) {
      return ApiResponse.failed(result.toString());
    }
    if (result['success'] != true) {
      return ApiResponse.failed('${result['message']}');
    }
    final data = result['data'];
    if (data is Map<String, dynamic>) {
      return ApiResponse.success(data);
    }
    if (data is Map) {
      return ApiResponse.success(Map<String, dynamic>.from(data));
    }
    return ApiResponse.failed('Unexpected response');
  }

  /// DummyJSON returns the resource itself on success and `{ message }` on failure.
  ApiResponse toResourceResponse(Response<dynamic> response) {
    final status = response.statusCode ?? 0;
    final data = response.data;
    if (status >= 200 && status < 300) {
      if (data is Map<String, dynamic>) {
        return ApiResponse.success(data);
      }
      if (data is Map) {
        return ApiResponse.success(Map<String, dynamic>.from(data));
      }
      return const ApiResponse.failed('Unexpected response');
    }
    if (data is Map && data['message'] != null) {
      return ApiResponse.failed(data['message'].toString());
    }
    return const ApiResponse.failed('Request failed');
  }
}

@freezed
sealed class ApiResponse with _$ApiResponse {
  const factory ApiResponse.success(Map<String, dynamic> data) =
      ApiResponseSuccess;
  const factory ApiResponse.failed(String message) = ApiResponseFailed;
}
