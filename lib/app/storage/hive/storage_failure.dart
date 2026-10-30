import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_failure.freezed.dart';

@freezed
sealed class StorageFailure with _$StorageFailure {
  const StorageFailure._();

  const factory StorageFailure.notLoaded() = StorageFailureNotLoaded;
  const factory StorageFailure.empty() = StorageFailureEmpty;
  const factory StorageFailure.alreadyExist() = StorageFailureAlreadyExist;
  const factory StorageFailure.unexpected() = StorageFailureUnexpected;
}
