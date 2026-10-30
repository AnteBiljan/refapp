import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:refapp/app/theme/app_theme.dart';

abstract class RouterPage {
  const RouterPage();

  static const Duration transitionDuration = Duration(milliseconds: 300);

  String get path;
  String get name;

  bool get instantTransition => false;

  List<RouteBase> get routes => const [];

  Widget buildChild(
    BuildContext context, {
    Object? extra,
    Map<String, String> pathParameters = const {},
  });

  GoRoute buildRoute({GlobalKey<NavigatorState>? parentNavigatorKey}) =>
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: path,
        name: name,
        routes: routes,
        pageBuilder: (context, state) {
          final child = buildChild(
            context,
            extra: state.extra,
            pathParameters: state.pathParameters,
          );
          if (instantTransition) {
            return NoTransitionPage(key: state.pageKey, name: name, child: child);
          }
          return CustomTransitionPage(
            key: state.pageKey,
            name: name,
            child: child,
            transitionDuration: transitionDuration,
            reverseTransitionDuration: transitionDuration,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position:
                    Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOutCubic,
                      ),
                    ),
                child: ColoredBox(
                  color: AppThemeColors.background(context),
                  child: child,
                ),
              );
            },
          );
        },
      );

  void goTo(
    BuildContext context, {
    Object? extra,
    Map<String, String> pathParameters = const {},
  }) => context.goNamed(name, extra: extra, pathParameters: pathParameters);

  Future<T?> push<T extends Object?>(
    BuildContext context, {
    Object? extra,
    Map<String, String> pathParameters = const {},
  }) => context.pushNamed<T>(name, extra: extra, pathParameters: pathParameters);
}
