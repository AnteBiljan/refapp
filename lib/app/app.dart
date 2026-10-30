import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:refapp/app/app_state/app_cubit.dart';
import 'package:refapp/app/di/di.dart';
import 'package:refapp/app/router/router.dart';
import 'package:refapp/app/theme/app_theme.dart';
import 'package:refapp/app/theme/theme_mode.dart';
import 'package:refapp/boot/env.dart';
import 'package:refapp/features/auth/application/auth/auth_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy: false, create: (_) => getIt<AppCubit>()),
        BlocProvider(create: (_) => getIt<AuthCubit>()),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const _SplashPage(),
            loading: (_) => const _SplashPage(),
            loaded: (loaded) => _RouterApp(
              themeMode: loaded.themeMode.map(
                light: (_) => ThemeMode.light,
                dark: (_) => ThemeMode.dark,
                system: (_) => ThemeMode.system,
              ),
            ),
            failed: (failed) => _SplashPage(
              message: failed.message,
              onRetry: () => context.read<AppCubit>().loadApp(),
            ),
          );
        },
      ),
    );
  }
}

class _RouterApp extends StatefulWidget {
  final ThemeMode themeMode;

  const _RouterApp({required this.themeMode});

  @override
  State<_RouterApp> createState() => _RouterAppState();
}

class _RouterAppState extends State<_RouterApp> {
  late final GoRouter router;

  @override
  void initState() {
    super.initState();
    router = createRouter(context.read<AuthCubit>());
  }

  @override
  void dispose() {
    router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Env().appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      themeMode: widget.themeMode,
      routerConfig: router,
    );
  }
}

class _SplashPage extends StatefulWidget {
  final String? message;
  final VoidCallback? onRetry;

  const _SplashPage({this.message, this.onRetry});

  @override
  State<_SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<_SplashPage> {
  @override
  void initState() {
    super.initState();
    if (widget.onRetry != null) return;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      await context.read<AuthCubit>().initAuth();
      if (!mounted) return;
      await context.read<AppCubit>().loadApp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Refapp',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 24),
                if (widget.message == null)
                  const CircularProgressIndicator()
                else ...[
                  Text(widget.message!, textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: widget.onRetry,
                    child: const Text('Try again'),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
