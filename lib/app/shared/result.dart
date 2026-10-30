import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T, F extends Failure> with _$Result<T, F> {
  const factory Result.success(T value) = ResultSuccess<T, F>;
  const factory Result.failure(F failure) = ResultFailure<T, F>;
}

abstract class Failure {
  String get message;
  const Failure();
}
