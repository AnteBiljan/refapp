import 'dart:convert';

class AccessToken {
  final String value;

  AccessToken._(this.value);

  static AccessToken? createToken(String? tokenString) {
    if (tokenString == null || tokenString.isEmpty) return null;
    if (tokenString.split('.').length != 3) return null;
    return AccessToken._(tokenString);
  }

  Map<String, dynamic>? get payload {
    try {
      final chunks = value.split('.');
      final normalized = base64Url.normalize(chunks[1]);
      final decoded = utf8.decode(base64Url.decode(normalized));
      final json = jsonDecode(decoded);
      if (json is Map<String, dynamic>) return json;
      if (json is Map) return Map<String, dynamic>.from(json);
      return null;
    } catch (_) {
      return null;
    }
  }

  DateTime? get expirationDate {
    final exp = payload?['exp'];
    if (exp is int) {
      return DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true);
    }
    if (exp is num) {
      return DateTime.fromMillisecondsSinceEpoch(
        exp.toInt() * 1000,
        isUtc: true,
      );
    }
    return null;
  }

  bool get isExpired {
    final expiry = expirationDate;
    if (expiry == null) return true;
    return expiry.isBefore(DateTime.now().toUtc());
  }
}
