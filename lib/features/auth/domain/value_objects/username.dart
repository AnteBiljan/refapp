import 'package:refapp/app/shared/value_objects/value_object.dart';

class UsernameFailure extends ValueFailure {
  const UsernameFailure(this.message);

  @override
  final String? message;
}

class Username extends ValueObject<String, UsernameFailure> {
  @override
  final ValidatedValue<String, UsernameFailure> value;

  const Username._(this.value);

  factory Username(String? input) {
    final trimmed = input?.trim() ?? '';
    if (trimmed.isEmpty) {
      return const Username._(
        ValidatedValue.invalid(UsernameFailure('Enter a username')),
      );
    }
    return Username._(ValidatedValue.valid(trimmed));
  }
}
