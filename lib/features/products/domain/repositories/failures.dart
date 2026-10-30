import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refapp/app/shared/result.dart';

part 'failures.freezed.dart';

@freezed
sealed class ProductFailure with _$ProductFailure implements Failure {
  const ProductFailure._();

  const factory ProductFailure.unexpected(String message) =
      ProductFailureUnexpected;
}
