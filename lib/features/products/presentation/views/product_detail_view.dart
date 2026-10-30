import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refapp/app/shared/ui/app_button.dart';
import 'package:refapp/features/products/application/product/product_cubit.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          loading: (_) => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          failed: (failed) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(failed.message, textAlign: TextAlign.center),
                    const SizedBox(height: 16),
                    AppButton(
                      title: 'Back',
                      onTap: () => Navigator.of(context).maybePop(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          loaded: (loaded) {
            final product = loaded.product;
            return Scaffold(
              appBar: AppBar(title: Text(product.title)),
              body: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1.4,
                      child: product.thumbnail.isEmpty
                          ? const ColoredBox(
                              color: Colors.transparent,
                              child: Icon(Icons.image_not_supported, size: 48),
                            )
                          : Image.network(
                              product.thumbnail,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) => const Center(
                                child: Icon(Icons.image_not_supported, size: 48),
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  if (product.brand.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(product.brand),
                  ],
                  const SizedBox(height: 12),
                  Text(
                    product.priceLabel,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text('Rating ${product.ratingLabel}'),
                  Text('${product.stock} in stock'),
                  const SizedBox(height: 16),
                  Text(product.description),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
