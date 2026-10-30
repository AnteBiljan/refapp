import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/products/application/models/product_view_model.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';
import 'package:refapp/features/products/domain/repositories/events.dart';
import 'package:refapp/features/products/domain/repositories/i_products_repository.dart';

part 'product_collection_state.dart';
part 'product_collection_cubit.freezed.dart';

@injectable
class ProductCollectionCubit extends Cubit<ProductCollectionState> {
  static const pageSize = 20;

  final IProductsRepository _repository;
  StreamSubscription? _subscription;

  int _total = 0;
  int _loadedCount = 0;
  bool _refreshing = false;
  bool _loadingMore = false;
  bool _requestSettled = false;
  String? _loadMoreError;
  List<ProductViewModel> _products = const [];

  ProductCollectionCubit(this._repository)
    : super(const ProductCollectionState.initial()) {
    _subscription = _repository.watchAll().listen(_onEvent);
  }

  Future<void> load() => _fetch(initial: true);

  Future<void> refresh() => _fetch(initial: false);

  Future<void> loadMore() async {
    if (_loadingMore || _refreshing || _loadedCount >= _total) return;
    _loadingMore = true;
    _loadMoreError = null;
    _publish();
    final result = await _repository.loadPage(
      skip: _loadedCount,
      limit: pageSize,
      refresh: false,
    );
    _loadingMore = false;
    if (isClosed) return;
    result.map(
      success: (success) => _applyPage(success.value, replace: false),
      failure: (failure) => _loadMoreError = failure.failure.message,
    );
    _publish();
  }

  Future<void> clear() => _repository.clear();

  Future<void> _fetch({required bool initial}) async {
    if (initial) {
      _requestSettled = false;
      emit(const ProductCollectionState.loading());
    } else {
      _refreshing = true;
    }
    final result = await _repository.loadPage(
      skip: 0,
      limit: pageSize,
      refresh: true,
    );
    _refreshing = false;
    _requestSettled = true;
    if (isClosed) return;
    result.map(
      success: (success) {
        _loadMoreError = null;
        _applyPage(success.value, replace: true);
        _publish();
      },
      failure: (failure) {
        if (initial || _products.isEmpty) {
          emit(ProductCollectionState.failed(message: failure.failure.message));
          return;
        }
        _publish(refreshError: failure.failure.message);
      },
    );
  }

  void _applyPage(ProductPage page, {required bool replace}) {
    final incoming = page.products.map(ProductViewModel.fromProduct).toList();
    if (replace) {
      _products = incoming;
    } else {
      final ids = _products.map((product) => product.id).toSet();
      _products = [
        ..._products,
        ...incoming.where((product) => !ids.contains(product.id)),
      ];
    }
    _total = page.total;
    _loadedCount = page.skip + page.products.length;
  }

  void _publish({String? refreshError}) {
    if (_products.isEmpty) {
      emit(const ProductCollectionState.empty());
      return;
    }
    emit(
      ProductCollectionState.loaded(
        products: _products,
        hasMore: _loadedCount < _total,
        isLoadingMore: _loadingMore,
        loadMoreError: _loadMoreError,
        refreshError: refreshError,
      ),
    );
  }

  void _onEvent(ProductsRepositoryEvent event) {
    if (_refreshing || !_requestSettled || isClosed) return;
    event.map(
      loaded: (loaded) {
        _products = loaded.products.map(ProductViewModel.fromProduct).toList();
        _publish();
      },
      empty: (_) {
        if (_loadingMore || _products.isNotEmpty) return;
        if (state.mapOrNull(failed: (_) => true) ?? false) return;
        _products = const [];
        emit(const ProductCollectionState.empty());
      },
      notLoaded: (_) {},
      unexpected: (_) {},
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
