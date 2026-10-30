import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:refapp/features/products/application/collection/product_collection_cubit.dart';
import 'package:refapp/features/products/presentation/views/product_list_view.dart';
import 'package:refapp/features/products/presentation/widgets/product_list_tile.dart';
import 'package:refapp/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('signs in, pages products, and opens a detail', (tester) async {
    await app.main();
    await _untilAny(tester, [find.text('Sign in'), find.byType(ProductListTile)]);

    if (find.byType(ProductListTile).evaluate().isNotEmpty) {
      await tester.tap(find.byIcon(Icons.logout));
      await tester.pump();
      await _until(tester, find.text('Sign in'));
    }

    await tester.tap(find.text('Sign in'));
    await _until(tester, find.byType(ProductListTile));

    final cubit = tester
        .element(find.byType(ProductListView))
        .read<ProductCollectionCubit>();
    expect(
      cubit.state.mapOrNull(loaded: (state) => state.products.length),
      ProductCollectionCubit.pageSize,
    );

    final list = find.byType(ListView).first;
    for (var attempt = 0; attempt < 6; attempt++) {
      await tester.fling(list, const Offset(0, -2500), 8000);
      await tester.pump(const Duration(milliseconds: 500));
    }
    await tester.pump(const Duration(seconds: 2));
    expect(
      cubit.state.mapOrNull(loaded: (state) => state.products.length),
      greaterThan(ProductCollectionCubit.pageSize),
    );

    tester
        .state<ScrollableState>(find.byType(Scrollable).first)
        .position
        .jumpTo(0);
    await tester.pump();
    await tester.drag(list, const Offset(0, 400));
    await tester.pump();
    await tester.pump(const Duration(seconds: 2));
    final tile = find.byType(ProductListTile).hitTestable();
    expect(tile, findsWidgets);
    await tester.tap(tile.first);
    await tester.pump();
    await _until(tester, find.textContaining('in stock'));
  });
}

Future<void> _until(WidgetTester tester, Finder finder) async {
  await _untilAny(tester, [finder]);
}

Future<void> _untilAny(WidgetTester tester, List<Finder> finders) async {
  for (var attempt = 0; attempt < 80; attempt++) {
    await tester.pump(const Duration(milliseconds: 250));
    if (finders.any((finder) => finder.evaluate().isNotEmpty)) return;
  }
  fail('Timed out waiting for a matching widget');
}
