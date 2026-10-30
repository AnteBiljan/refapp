import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:refapp/app/router/layouts/app_layout.dart';
import 'package:refapp/app/router/routes/routes.dart';
import 'package:refapp/features/auth/application/auth/auth_cubit.dart';

GoRouter createRouter(AuthCubit authCubit) {
  final loggedIn =
      authCubit.state.mapOrNull(authenticated: (_) => true) ?? false;
  return GoRouter(
    initialLocation: loggedIn ? Routes.products.path : Routes.login.path,
    refreshListenable: _RouterRefresh(authCubit.stream),
    redirect: (context, state) {
      final signedIn =
          authCubit.state.mapOrNull(authenticated: (_) => true) ?? false;
      final loggingIn = state.matchedLocation == Routes.login.path;
      if (!signedIn && !loggingIn) return Routes.login.path;
      if (signedIn && loggingIn) return Routes.products.path;
      return null;
    },
    routes: [
      Routes.login.buildRoute(),
      ShellRoute(
        builder: (context, state, child) => AppLayout(child: child),
        routes: [
          Routes.products.buildRoute(),
          Routes.productDetail.buildRoute(),
        ],
      ),
    ],
  );
}

class _RouterRefresh extends ChangeNotifier {
  _RouterRefresh(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
