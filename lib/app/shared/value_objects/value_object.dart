import 'package:freezed_annotation/freezed_annotation.dart';

part 'validated_value.dart';
part 'value_failure.dart';
part 'value_object.freezed.dart';

abstract class ValueObject<T, F extends ValueFailure> {
  ValidatedValue<T, F> get value;

  const ValueObject();

  bool get isValid => value.when(valid: (v) => true, invalid: (f) => false);

  bool get isInvalid => !isValid;

  T? get valueOrNull => value.when(valid: (v) => v, invalid: (f) => null);

  F? get failureOrNull => value.when(valid: (_) => null, invalid: (f) => f);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T, F> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}
