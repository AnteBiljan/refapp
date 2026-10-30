import 'package:flutter/material.dart';
import 'package:refapp/app/router/routes/router_page.dart';
import 'package:refapp/features/products/presentation/views/product_list_view.dart';

class ProductListRoute extends RouterPage {
  const ProductListRoute();

  @override
  String get path => '/products';

  @override
  String get name => 'products';

  @override
  bool get instantTransition => true;

  @override
  Widget buildChild(
    BuildContext context, {
    Object? extra,
    Map<String, String> pathParameters = const {},
  }) {
    return const ProductListView();
  }
}
