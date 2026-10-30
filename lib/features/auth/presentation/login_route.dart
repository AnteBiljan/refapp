import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refapp/app/di/di.dart';
import 'package:refapp/app/router/routes/router_page.dart';
import 'package:refapp/features/auth/application/login/login_cubit.dart';
import 'package:refapp/features/auth/presentation/views/login_view.dart';

class LoginRoute extends RouterPage {
  const LoginRoute();

  @override
  String get path => '/login';

  @override
  String get name => 'login';

  @override
  bool get instantTransition => true;

  @override
  Widget buildChild(
    BuildContext context, {
    Object? extra,
    Map<String, String> pathParameters = const {},
  }) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: const LoginView(),
    );
  }
}
