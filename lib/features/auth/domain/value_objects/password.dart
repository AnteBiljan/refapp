import 'package:refapp/app/shared/value_objects/value_object.dart';

class PasswordFailure extends ValueFailure {
  const PasswordFailure(this.message);

  @override
  final String? message;
}

class Password extends ValueObject<String, PasswordFailure> {
  @override
  final ValidatedValue<String, PasswordFailure> value;

  const Password._(this.value);

  factory Password(String? input) {
    final password = input ?? '';
    if (password.isEmpty) {
      return const Password._(
        ValidatedValue.invalid(PasswordFailure('Enter a password')),
      );
    }
    return Password._(ValidatedValue.valid(password));
  }
}
