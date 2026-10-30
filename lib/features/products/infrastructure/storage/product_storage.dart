import 'package:injectable/injectable.dart';
import 'package:refapp/app/storage/hive/hive_storage_controller.dart';
import 'package:refapp/features/products/infrastructure/storage/models/product_storage_model.dart';

@injectable
class ProductStorage extends HiveStorageController<ProductStorageModel> {
  const ProductStorage._() : super('products');

  @factoryMethod
  factory ProductStorage() => const ProductStorage._();
}
