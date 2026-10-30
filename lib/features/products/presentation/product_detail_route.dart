import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refapp/app/di/di.dart';
import 'package:refapp/app/router/routes/router_page.dart';
import 'package:refapp/features/products/application/product/product_cubit.dart';
import 'package:refapp/features/products/presentation/views/product_detail_view.dart';

class ProductDetailRoute extends RouterPage {
  const ProductDetailRoute();

  @override
  String get path => '/products/:id';

  @override
  String get name => 'product';

  @override
  Widget buildChild(
    BuildContext context, {
    Object? extra,
    Map<String, String> pathParameters = const {},
  }) {
    final id = int.tryParse(pathParameters['id'] ?? '') ?? 0;
    return BlocProvider(
      create: (_) => getIt<ProductCubit>()..load(id),
      child: const ProductDetailView(),
    );
  }
}
