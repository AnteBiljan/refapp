import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/features/products/application/models/product_view_model.dart';
import 'package:refapp/features/products/domain/repositories/i_products_repository.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final IProductsRepository _repository;

  ProductCubit(this._repository) : super(const ProductState.initial());

  Future<void> load(int id) async {
    emit(const ProductState.loading());
    final result = await _repository.loadProduct(id);
    if (isClosed) return;
    await result.map(
      success: (success) async {
        emit(
          ProductState.loaded(
            product: ProductViewModel.fromProduct(success.value),
          ),
        );
      },
      failure: (failure) async {
        final cached = await _repository.findProduct(id);
        if (isClosed) return;
        final product = cached.valueOrNull;
        if (product == null) {
          emit(ProductState.failed(message: failure.failure.message));
          return;
        }
        emit(
          ProductState.loaded(product: ProductViewModel.fromProduct(product)),
        );
      },
    );
  }
}
