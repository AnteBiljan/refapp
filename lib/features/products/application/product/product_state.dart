part of 'product_cubit.dart';

@freezed
sealed class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitial;
  const factory ProductState.loading() = ProductLoading;
  const factory ProductState.loaded({required ProductViewModel product}) =
      ProductLoaded;
  const factory ProductState.failed({required String message}) = ProductFailed;
}
