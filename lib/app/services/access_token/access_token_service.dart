import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token.dart';
import 'package:refapp/app/shared/cached_object.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/storage/secure/secure_storage.dart';

@injectable
class AccessTokenService {
  static final AccessTokenService _instance = AccessTokenService._(
    CachedObject<AccessToken>(null),
    SecureStorage(),
  );

  final CachedObject<AccessToken> _token;
  final SecureStorage _secureStorage;

  factory AccessTokenService() => _instance;

  AccessTokenService._(this._token, this._secureStorage);

  Option<AccessToken> get token => _token.value;

  Future<void> init() async {
    final tokenString = await _secureStorage.read('token');
    _token.store(AccessToken.createToken(tokenString));
  }

  Stream<Option<AccessToken>> watchToken() =>
      _token.watch().map((event) => event.$2);

  Future<void> storeToken(String tokenString) async {
    await _secureStorage.save('token', tokenString);
    _token.store(AccessToken.createToken(tokenString));
  }

  Future<void> clearToken() async {
    await _secureStorage.delete('token');
    _token.clear();
  }
}
