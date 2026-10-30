import 'package:hive_ce/hive_ce.dart';
import 'package:refapp/features/products/infrastructure/storage/models/product_storage_model.dart';

class ProductAdapter extends TypeAdapter<ProductStorageModel> {
  @override
  int get typeId => 2;

  @override
  ProductStorageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductStorageModel(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      category: fields[3] as String,
      price: (fields[4] as num).toDouble(),
      rating: (fields[5] as num).toDouble(),
      stock: fields[6] as int,
      brand: fields[7] as String,
      thumbnail: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductStorageModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.stock)
      ..writeByte(7)
      ..write(obj.brand)
      ..writeByte(8)
      ..write(obj.thumbnail);
  }
}
