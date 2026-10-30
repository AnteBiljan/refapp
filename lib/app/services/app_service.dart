import 'package:injectable/injectable.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/app/storage/app_storage/app_storage.dart';
import 'package:refapp/app/storage/hive/storage_response.dart';
import 'package:refapp/app/storage/app_storage/app_storage_model.dart';

@lazySingleton
class AppService {
  final AppStorage _appStorage;

  AppService(this._appStorage);

  Stream<Result<AppStorageModel, AppFailure>> watchAppState() =>
      _appStorage.watch('app').map(
        (value) => value.map(
          success: (success) => Result.success(success.storageObject),
          failed: (failed) => Result.failure(const AppFailure.unexpected()),
        ),
      );

  Future<Result<AppStorageModel, AppFailure>> getAppState() =>
      _appStorage.read('app').then(
        (value) => value.map(
          success: (success) => Result.success(success.storageObject),
          failed: (failed) => Result.failure(const AppFailure.unexpected()),
        ),
      );

  Future<Result<AppStorageModel, AppFailure>> updateAppState(
    AppStorageModel appStorageModel,
  ) => _appStorage.update(appStorageModel).then(
    (value) => value.map(
      success: (success) => Result.success(success.storageObject),
      failed: (failed) => Result.failure(const AppFailure.unexpected()),
    ),
  );
}

class AppFailure extends Failure {
  @override
  final String message;

  const AppFailure._(this.message);

  const factory AppFailure.unexpected() = _AppFailureUnexpected;
}

class _AppFailureUnexpected extends AppFailure {
  const _AppFailureUnexpected() : super._('Could not read app settings');
}
