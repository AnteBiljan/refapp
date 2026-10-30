import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/app/storage/hive/storage_failure.dart';

part 'storage_response.freezed.dart';

@freezed
sealed class StorageResponse<R> with _$StorageResponse<R> {
  const StorageResponse._();

  const factory StorageResponse.success(R storageObject) =
      StorageResponseLoaded<R>;
  const factory StorageResponse.failed(StorageFailure failure) =
      StorageResponseFailed<R>;
}
