import 'package:hive_ce/hive_ce.dart';
import 'package:refapp/app/storage/hive/storage_failure.dart';
import 'package:refapp/app/storage/hive/storage_model.dart';
import 'package:refapp/app/storage/hive/storage_response.dart';

abstract class HiveStorageController<T extends StorageModel> {
  final String _boxName;

  const HiveStorageController(this._boxName);

  Future<Box<T>> open() async {
    return Hive.openBox<T>(_boxName);
  }

  Stream<StorageResponse<List<T>>> watchAll() async* {
    final box = await open();
    yield box.values.isEmpty
        ? StorageResponse<List<T>>.failed(const StorageFailure.empty())
        : StorageResponse<List<T>>.success(box.values.toList());
    await for (final boxEvent in box.watch()) {
      if (boxEvent.deleted || box.values.isEmpty) {
        yield box.values.isEmpty
            ? StorageResponse<List<T>>.failed(const StorageFailure.empty())
            : StorageResponse<List<T>>.success(box.values.toList());
      } else {
        yield StorageResponse<List<T>>.success(box.values.toList());
      }
    }
  }

  Stream<StorageResponse<T>> watch(String key) async* {
    final box = await open();
    final current = box.get(key);
    yield current == null
        ? StorageResponse<T>.failed(const StorageFailure.notLoaded())
        : StorageResponse<T>.success(current);
    await for (final boxEvent in box.watch(key: key)) {
      if (boxEvent.deleted || boxEvent.value == null) {
        yield StorageResponse<T>.failed(const StorageFailure.notLoaded());
      } else {
        yield StorageResponse<T>.success(boxEvent.value as T);
      }
    }
  }

  Future<StorageResponse<T>> update(T storageObject) async {
    final box = await open();
    await box.put(storageObject.storageKey, storageObject);
    final updated = box.get(storageObject.storageKey);
    return updated == null
        ? StorageResponse.failed(const StorageFailure.notLoaded())
        : StorageResponse.success(updated);
  }

  Future<StorageResponse<List<T>>> updateAll(
    Map<String, T> storageObjects,
  ) async {
    final box = await open();
    await box.putAll(storageObjects);
    final updated = box.values.toList();
    return updated.isEmpty
        ? StorageResponse.failed(const StorageFailure.empty())
        : StorageResponse.success(updated);
  }

  Future<StorageResponse<T>> read(String key) async {
    final box = await open();
    final storageObject = box.get(key);
    return storageObject == null
        ? StorageResponse.failed(const StorageFailure.notLoaded())
        : StorageResponse.success(storageObject);
  }

  Future<StorageResponse<List<T>>> readAll() async {
    final box = await open();
    return StorageResponse.success(box.values.toList());
  }

  Future<void> destroyAll() async {
    final box = await open();
    await box.clear();
  }
}
