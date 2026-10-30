import 'package:injectable/injectable.dart';
import 'package:refapp/app/services/access_token/access_token.dart';
import 'package:refapp/app/shared/cached_object.dart';
import 'package:refapp/app/shared/option.dart';
import 'package:refapp/app/storage/secure/secure_storage.dart';

@injectable
class AccessTokenService {
  static const _refreshTokenKey = 'refresh_token';
  static const _legacyAccessTokenKey = 'token';

  static final AccessTokenService _instance = AccessTokenService._(
    CachedObject<AccessToken>(null),
    CachedObject<AccessToken>(null),
    SecureStorage(),
  );

  final CachedObject<AccessToken> _token;
  final CachedObject<AccessToken> _refreshToken;
  final SecureStorage _secureStorage;

  factory AccessTokenService() => _instance;

  AccessTokenService._(this._token, this._refreshToken, this._secureStorage);

  Option<AccessToken> get token => _token.value;

  Option<AccessToken> get refreshToken => _refreshToken.value;

  Future<void> init() async {
    await _secureStorage.delete(_legacyAccessTokenKey);
    final refreshToken = await _secureStorage.read(_refreshTokenKey);
    _refreshToken.store(AccessToken.createToken(refreshToken));
  }

  Stream<Option<AccessToken>> watchRefreshToken() =>
      _refreshToken.watch().map((event) => event.$2);

  void storeAccessToken(String tokenString) {
    _token.store(AccessToken.createToken(tokenString));
  }

  Future<void> storeRefreshToken(String tokenString) async {
    await _secureStorage.save(_refreshTokenKey, tokenString);
    _refreshToken.store(AccessToken.createToken(tokenString));
  }

  Future<void> clear() async {
    await _secureStorage.delete(_refreshTokenKey);
    await _secureStorage.delete(_legacyAccessTokenKey);
    _token.clear();
    _refreshToken.clear();
  }
}
