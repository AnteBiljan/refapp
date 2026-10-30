import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:refapp/app/di/di.dart';
import 'package:refapp/app/http/http_client.dart';
import 'package:refapp/app/services/access_token/access_token_service.dart';
import 'package:refapp/app/shared/result.dart';
import 'package:refapp/app/storage/storage_config.dart';
import 'package:refapp/boot/env.dart';
import 'package:refapp/features/auth/domain/repositories/i_auth_repository.dart';

Future<void> bootApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  final env = Env();
  await configureInjection(env: env.env);
  getIt<HttpClient>().bindSessionRefresher(() async {
    final result = await getIt<IAuthRepository>().refresh();
    return result.map(success: (_) => true, failure: (_) => false);
  });
  final appDocDir = await getApplicationDocumentsDirectory();
  await configureStorage(appDocDir.path);
  await AccessTokenService().init();
}
