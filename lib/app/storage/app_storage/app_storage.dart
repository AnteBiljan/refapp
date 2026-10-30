import 'package:injectable/injectable.dart';
import 'package:refapp/app/storage/app_storage/app_storage_model.dart';
import 'package:refapp/app/storage/hive/hive_storage_controller.dart';

@injectable
class AppStorage extends HiveStorageController<AppStorageModel> {
  const AppStorage._() : super('app');

  @factoryMethod
  factory AppStorage() => const AppStorage._();
}
