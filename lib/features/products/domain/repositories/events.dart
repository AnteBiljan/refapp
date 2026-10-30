import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/features/products/domain/entities/product.dart';

part 'events.freezed.dart';

@freezed
sealed class ProductsRepositoryEvent with _$ProductsRepositoryEvent {
  const factory ProductsRepositoryEvent.loaded(List<Product> products) =
      ProductsLoadedEvent;
  const factory ProductsRepositoryEvent.empty() = ProductsEmptyEvent;
  const factory ProductsRepositoryEvent.notLoaded() = ProductsNotLoadedEvent;
  const factory ProductsRepositoryEvent.unexpected() =
      ProductsUnexpectedEvent;
}
