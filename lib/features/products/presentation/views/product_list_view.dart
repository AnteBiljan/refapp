import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refapp/app/app_state/app_cubit.dart';
import 'package:refapp/app/router/routes/routes.dart';
import 'package:refapp/app/shared/ui/app_button.dart';
import 'package:refapp/app/theme/theme_mode.dart';
import 'package:refapp/features/auth/application/auth/auth_cubit.dart';
import 'package:refapp/features/products/application/collection/product_collection_cubit.dart';
import 'package:refapp/features/products/presentation/widgets/product_list_tile.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() => _maybeLoadMore();

  void _maybeLoadMore() {
    if (!mounted || !_controller.hasClients) return;
    final cubit = context.read<ProductCollectionCubit>();
    final loaded = cubit.state.mapOrNull(loaded: (state) => state);
    if (loaded == null || !loaded.hasMore || loaded.isLoadingMore) return;
    final position = _controller.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      cubit.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            tooltip: 'Theme',
            onPressed: () {
              final mode = context.read<AppCubit>().state.mapOrNull(
                loaded: (state) => state.themeMode,
              );
              final next =
                  mode?.map(
                    light: (_) => const AppThemeMode.dark(),
                    dark: (_) => const AppThemeMode.system(),
                    system: (_) => const AppThemeMode.light(),
                  ) ??
                  const AppThemeMode.light();
              context.read<AppCubit>().setThemeMode(next);
            },
            icon: const Icon(Icons.brightness_6),
          ),
          IconButton(
            tooltip: 'Log out',
            onPressed: () async {
              await context.read<ProductCollectionCubit>().clear();
              if (!context.mounted) return;
              await context.read<AuthCubit>().logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocConsumer<ProductCollectionCubit, ProductCollectionState>(
        listener: (context, state) {
          state.mapOrNull(
            loaded: (_) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) _maybeLoadMore();
              });
            },
          );
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: CircularProgressIndicator()),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            empty: (_) => RefreshIndicator(
              onRefresh: () => context.read<ProductCollectionCubit>().refresh(),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(height: 120),
                  Icon(Icons.inventory_2_outlined, size: 48),
                  SizedBox(height: 12),
                  Text('No products', textAlign: TextAlign.center),
                ],
              ),
            ),
            failed: (failed) => Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(failed.message, textAlign: TextAlign.center),
                    const SizedBox(height: 16),
                    AppButton(
                      title: 'Try again',
                      onTap: () => context.read<ProductCollectionCubit>().load(),
                    ),
                  ],
                ),
              ),
            ),
            loaded: (loaded) {
              final showFooter =
                  loaded.isLoadingMore || loaded.loadMoreError != null;
              return RefreshIndicator(
                onRefresh: () =>
                    context.read<ProductCollectionCubit>().refresh(),
                child: ListView.separated(
                  controller: _controller,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  itemCount: loaded.products.length + (showFooter ? 1 : 0),
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    if (index >= loaded.products.length) {
                      if (loaded.loadMoreError != null) {
                        return Column(
                          children: [
                            Text(loaded.loadMoreError!),
                            TextButton(
                              onPressed: () => context
                                  .read<ProductCollectionCubit>()
                                  .loadMore(),
                              child: const Text('Try again'),
                            ),
                          ],
                        );
                      }
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                    final product = loaded.products[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (index == 0 && loaded.refreshError != null) ...[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Text(loaded.refreshError!),
                          ),
                        ],
                        ProductListTile(
                          product: product,
                          onTap: () => Routes.productDetail.push(
                            context,
                            pathParameters: {'id': '${product.id}'},
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
