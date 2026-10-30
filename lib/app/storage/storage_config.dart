import 'package:hive_ce/hive_ce.dart';
import 'package:refapp/app/storage/app_storage/app_storage_hive_adapter.dart';
import 'package:refapp/features/products/infrastructure/storage/hive_adapters/product_hive_adapter.dart';

Future<void> configureStorage(String appDocDirPath) async {
  Hive.init(appDocDirPath);
  _register(AppAdapter());
  _register(ProductAdapter());
}

void _register<T>(TypeAdapter<T> adapter) {
  if (!Hive.isAdapterRegistered(adapter.typeId)) {
    Hive.registerAdapter(adapter);
  }
}
