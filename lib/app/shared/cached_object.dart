import 'dart:async';

import 'package:refapp/app/shared/option.dart';

class CachedObject<T> {
  Option<T> _value;
  DateTime _lastUpdated;
  final StreamController<(DateTime, Option<T>)> _controller;

  CachedObject(T? value)
    : _lastUpdated = DateTime.now(),
      _controller = StreamController.broadcast(),
      _value = Option.fromNullable(value);

  Option<T> get value => _value;

  void store(T? value) => _updateValue(value);

  Stream<(DateTime, Option<T>)> watch() => _controller.stream;

  void resendValue() => _controller.add((_lastUpdated, value));

  void _updateValue(T? newValue) {
    _value = Option.fromNullable(newValue);
    _lastUpdated = DateTime.now();
    _controller.add((_lastUpdated, _value));
  }

  void clear() => _updateValue(null);
}
