import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/features/products/domain/entities/product.dart';

part 'product_view_model.freezed.dart';

@Freezed(toJson: false, fromJson: false)
sealed class ProductViewModel with _$ProductViewModel {
  const ProductViewModel._();

  const factory ProductViewModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double rating,
    required int stock,
    required String brand,
    required String thumbnail,
  }) = _ProductViewModel;

  factory ProductViewModel.fromProduct(Product product) => ProductViewModel(
    id: product.id,
    title: product.title,
    description: product.description,
    category: product.category,
    price: product.price,
    rating: product.rating,
    stock: product.stock,
    brand: product.brand,
    thumbnail: product.thumbnail,
  );

  String get priceLabel => '\$${price.toStringAsFixed(2)}';

  String get ratingLabel => rating.toStringAsFixed(1);
}
