part of 'value_object.dart';

@freezed
sealed class ValidatedValue<T, F extends ValueFailure>
    with _$ValidatedValue<T, F> {
  const factory ValidatedValue.valid(T value) = ValidatedValid<T, F>;
  const factory ValidatedValue.invalid(F failure) = ValidatedInvalid<T, F>;
}
