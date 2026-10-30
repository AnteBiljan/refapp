// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:refapp/app/app_state/app_cubit.dart' as _i321;
import 'package:refapp/app/di/injectable_module.dart' as _i739;
import 'package:refapp/app/http/http_client.dart' as _i231;
import 'package:refapp/app/services/access_token/access_token_service.dart'
    as _i138;
import 'package:refapp/app/services/app_service.dart' as _i858;
import 'package:refapp/app/storage/app_storage/app_storage.dart' as _i800;
import 'package:refapp/app/storage/secure/secure_storage.dart' as _i273;
import 'package:refapp/features/auth/application/auth/auth_cubit.dart' as _i679;
import 'package:refapp/features/auth/application/login/login_cubit.dart'
    as _i467;
import 'package:refapp/features/auth/domain/repositories/i_auth_repository.dart'
    as _i1012;
import 'package:refapp/features/auth/infrastructure/api/auth_api_prod.dart'
    as _i6;
import 'package:refapp/features/auth/infrastructure/api/i_auth_api.dart'
    as _i857;
import 'package:refapp/features/auth/infrastructure/repositories/auth_repository_prod.dart'
    as _i63;
import 'package:refapp/features/products/application/collection/product_collection_cubit.dart'
    as _i927;
import 'package:refapp/features/products/application/product/product_cubit.dart'
    as _i884;
import 'package:refapp/features/products/domain/repositories/i_products_repository.dart'
    as _i706;
import 'package:refapp/features/products/infrastructure/api/i_products_api.dart'
    as _i237;
import 'package:refapp/features/products/infrastructure/api/products_api_prod.dart'
    as _i299;
import 'package:refapp/features/products/infrastructure/repositories/product_repository_prod.dart'
    as _i863;
import 'package:refapp/features/products/infrastructure/storage/product_storage.dart'
    as _i573;

const String _dev = 'dev';
const String _staging = 'staging';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.factory<_i361.Dio>(() => injectableModule.dio);
    gh.factory<_i138.AccessTokenService>(() => _i138.AccessTokenService());
    gh.factory<_i800.AppStorage>(() => _i800.AppStorage());
    gh.factory<_i273.SecureStorage>(() => _i273.SecureStorage());
    gh.factory<_i573.ProductStorage>(() => _i573.ProductStorage());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectableModule.secureStorage,
    );
    gh.lazySingleton<_i858.AppService>(
      () => _i858.AppService(gh<_i800.AppStorage>()),
    );
    gh.lazySingleton<_i231.HttpClient>(
      () =>
          _i231.HttpClient(gh<_i361.Dio>(), gh<_i138.AccessTokenService>())
            ..init(),
    );
    gh.lazySingleton<_i237.IProductsApi>(
      () => _i299.ProductsApiProd(gh<_i231.HttpClient>()),
      registerFor: {_dev, _staging, _prod},
    );
    gh.lazySingleton<_i857.IAuthApi>(
      () => _i6.AuthApiProd(gh<_i231.HttpClient>()),
      registerFor: {_dev, _staging, _prod},
    );
    gh.factory<_i321.AppCubit>(() => _i321.AppCubit(gh<_i858.AppService>()));
    gh.lazySingleton<_i1012.IAuthRepository>(
      () => _i63.AuthRepositoryProd(
        gh<_i857.IAuthApi>(),
        gh<_i138.AccessTokenService>(),
      ),
      registerFor: {_dev, _staging, _prod},
    );
    gh.lazySingleton<_i706.IProductsRepository>(
      () => _i863.ProductRepositoryProd.create(
        gh<_i573.ProductStorage>(),
        gh<_i237.IProductsApi>(),
      )..init(),
      registerFor: {_dev, _staging, _prod},
    );
    gh.factory<_i467.LoginCubit>(
      () => _i467.LoginCubit(gh<_i1012.IAuthRepository>()),
    );
    gh.factory<_i679.AuthCubit>(
      () => _i679.AuthCubit(
        gh<_i138.AccessTokenService>(),
        gh<_i1012.IAuthRepository>(),
      ),
    );
    gh.factory<_i927.ProductCollectionCubit>(
      () => _i927.ProductCollectionCubit(gh<_i706.IProductsRepository>()),
    );
    gh.factory<_i884.ProductCubit>(
      () => _i884.ProductCubit(gh<_i706.IProductsRepository>()),
    );
    return this;
  }
}

class _$InjectableModule extends _i739.InjectableModule {}
