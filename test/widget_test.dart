import 'package:flutter_test/flutter_test.dart';
import 'package:refapp/features/auth/domain/value_objects/password.dart';
import 'package:refapp/features/auth/domain/value_objects/username.dart';
import 'package:refapp/features/products/domain/entities/product_page.dart';

void main() {
  test('username and password reject empty input', () {
    expect(Username('  ').failureOrNull?.message, 'Enter a username');
    expect(Username('emilys').valueOrNull, 'emilys');
    expect(Password('').failureOrNull?.message, 'Enter a password');
    expect(Password('emilyspass').isValid, isTrue);
  });

  test('product page reports whether another page exists', () {
    const first = ProductPage(products: [], total: 40, skip: 0, limit: 20);
    const done = ProductPage(products: [], total: 20, skip: 20, limit: 20);

    expect(first.hasMore, isTrue);
    expect(done.hasMore, isFalse);
  });
}
