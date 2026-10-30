import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/app/storage/hive/storage_model.dart';

part 'product_storage_model.freezed.dart';

@freezed
sealed class ProductStorageModel
    with _$ProductStorageModel
    implements StorageModel {
  const ProductStorageModel._();

  @override
  String get storageKey => id.toString();

  const factory ProductStorageModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double rating,
    required int stock,
    required String brand,
    required String thumbnail,
  }) = _ProductStorageModel;
}
