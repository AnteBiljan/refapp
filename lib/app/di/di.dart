import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:refapp/app/di/di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection({String? env}) async =>
    getIt.init(environment: env);
