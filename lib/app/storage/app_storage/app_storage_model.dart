import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/app/storage/hive/storage_model.dart';

part 'app_storage_model.freezed.dart';

@freezed
sealed class AppStorageModel with _$AppStorageModel implements StorageModel {
  const AppStorageModel._();

  @override
  String get storageKey => 'app';

  const factory AppStorageModel({required String themeMode}) =
      _AppStorageModel;
}
