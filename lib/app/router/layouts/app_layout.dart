import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refapp/app/di/di.dart';
import 'package:refapp/features/products/application/collection/product_collection_cubit.dart';

class AppLayout extends StatelessWidget {
  final Widget child;

  const AppLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => getIt<ProductCollectionCubit>()..load(),
      child: child,
    );
  }
}
