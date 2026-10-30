import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@Freezed(toJson: false, fromJson: false)
sealed class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double rating,
    required int stock,
    required String brand,
    required String thumbnail,
  }) = _Product;
}
