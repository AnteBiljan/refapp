part of 'product_collection_cubit.dart';

@freezed
sealed class ProductCollectionState with _$ProductCollectionState {
  const factory ProductCollectionState.initial() = ProductCollectionInitial;
  const factory ProductCollectionState.loading() = ProductCollectionLoading;
  const factory ProductCollectionState.empty() = ProductCollectionEmpty;
  const factory ProductCollectionState.loaded({
    required List<ProductViewModel> products,
    required bool hasMore,
    required bool isLoadingMore,
    String? loadMoreError,
    String? refreshError,
  }) = ProductCollectionLoaded;
  const factory ProductCollectionState.failed({required String message}) =
      ProductCollectionFailed;
}
