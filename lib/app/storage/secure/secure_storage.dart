import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class SecureStorage {
  static final SecureStorage _instance = SecureStorage._(
    const FlutterSecureStorage(),
  );
  final FlutterSecureStorage _storage;

  const SecureStorage._(this._storage);

  factory SecureStorage() => _instance;

  Future<void> save(String key, String value) =>
      _storage.write(key: key, value: value);

  Future<String?> read(String key) => _storage.read(key: key);

  Future<void> delete(String key) => _storage.delete(key: key);
}
