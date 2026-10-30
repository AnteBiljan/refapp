import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/features/products/domain/entities/product.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/infrastructure/storage/models/product_storage_model.dart';

part 'product_dto.freezed.dart';

@Freezed(toJson: false, fromJson: false)
sealed class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double rating,
    required int stock,
    required String brand,
    required String thumbnail,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => ProductDto(
    id: (json['id'] as num?)?.toInt() ?? 0,
    title: json['title'] as String? ?? '',
    description: json['description'] as String? ?? '',
    category: json['category'] as String? ?? '',
    price: (json['price'] as num?)?.toDouble() ?? 0,
    rating: (json['rating'] as num?)?.toDouble() ?? 0,
    stock: (json['stock'] as num?)?.toInt() ?? 0,
    brand: json['brand'] as String? ?? '',
    thumbnail: json['thumbnail'] as String? ?? '',
  );

  factory ProductDto.fromDomain(Product product) => ProductDto(
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

  factory ProductDto.fromStorageObject(ProductStorageModel model) => ProductDto(
    id: model.id,
    title: model.title,
    description: model.description,
    category: model.category,
    price: model.price,
    rating: model.rating,
    stock: model.stock,
    brand: model.brand,
    thumbnail: model.thumbnail,
  );

  Product toDomain() => Product(
    id: id,
    title: title,
    description: description,
    category: category,
    price: price,
    rating: rating,
    stock: stock,
    brand: brand,
    thumbnail: thumbnail,
  );

  ProductStorageModel toStorageObject() => ProductStorageModel(
    id: id,
    title: title,
    description: description,
    category: category,
    price: price,
    rating: rating,
    stock: stock,
    brand: brand,
    thumbnail: thumbnail,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'category': category,
    'price': price,
    'rating': rating,
    'stock': stock,
    'brand': brand,
    'thumbnail': thumbnail,
  };
}

class ProductPageDto {
  final List<ProductDto> products;
  final int total;
  final int skip;
  final int limit;

  const ProductPageDto({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductPageDto.fromJson(Map<String, dynamic> json) {
    final raw = json['products'];
    final products = raw is List
        ? raw
              .whereType<Map>()
              .map(
                (item) => ProductDto.fromJson(Map<String, dynamic>.from(item)),
              )
              .toList()
        : <ProductDto>[];
    return ProductPageDto(
      products: products,
      total: (json['total'] as num?)?.toInt() ?? products.length,
      skip: (json['skip'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? products.length,
    );
  }

  ProductPage toDomain() => ProductPage(
    products: products.map((product) => product.toDomain()).toList(),
    total: total,
    skip: skip,
    limit: limit,
  );
}
