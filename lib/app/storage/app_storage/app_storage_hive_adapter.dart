import 'package:hive_ce/hive_ce.dart';
import 'package:refapp/app/storage/app_storage/app_storage_model.dart';

class AppAdapter extends TypeAdapter<AppStorageModel> {
  @override
  int get typeId => 1;

  @override
  AppStorageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppStorageModel(themeMode: fields[0] as String);
  }

  @override
  void write(BinaryWriter writer, AppStorageModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.themeMode);
  }
}
