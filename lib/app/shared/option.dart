import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';

@freezed
sealed class Option<T> with _$Option<T> {
  const Option._();

  const factory Option.some(T value) = Some<T>;
  const factory Option.none() = NoneOption<T>;

  factory Option.fromNullable(T? value) {
    return value == null ? Option<T>.none() : Option.some(value);
  }
}

extension OptionExtension<T> on Option<T> {
  bool get isSome => this is Some<T>;

  bool get isNone => this is NoneOption<T>;

  T? get valueOrNull => when(some: (value) => value, none: () => null);

  T getOrElse(T defaultValue) =>
      when(some: (value) => value, none: () => defaultValue);
}
