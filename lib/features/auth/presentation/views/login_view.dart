import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refapp/app/shared/ui/app_button.dart';
import 'package:refapp/app/shared/ui/app_text_field.dart';
import 'package:refapp/app/theme/app_theme.dart';
import 'package:refapp/features/auth/application/login/login_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _username;
  late final TextEditingController _password;
  var _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    final state = context.read<LoginCubit>().state;
    final fields = state.mapOrNull(
      editing: (state) => (username: state.username, password: state.password),
    );
    _username = TextEditingController(text: fields?.username.valueOrNull ?? '');
    _password = TextEditingController(text: fields?.password.valueOrNull ?? '');
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  final submitting = state.mapOrNull(
                    submitting: (_) => true,
                  );
                  final formError = state.mapOrNull(
                    failed: (state) => state.message,
                  );
                  final usernameError = state.map(
                    editing: (state) => state.username.failureOrNull?.message,
                    submitting: (_) => null,
                    success: (_) => null,
                    failed: (state) => state.username.failureOrNull?.message,
                  );
                  final passwordError = state.map(
                    editing: (state) => state.password.failureOrNull?.message,
                    submitting: (_) => null,
                    success: (_) => null,
                    failed: (state) => state.password.failureOrNull?.message,
                  );
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Refapp',
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Sign in to browse products',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),
                      AppTextField(
                        controller: _username,
                        labelText: 'Username',
                        errorText: usernameError,
                        enabled: submitting != true,
                        textInputAction: TextInputAction.next,
                        onChanged: context.read<LoginCubit>().usernameChanged,
                      ),
                      const SizedBox(height: 16),
                      AppTextField(
                        controller: _password,
                        labelText: 'Password',
                        errorText: passwordError,
                        enabled: submitting != true,
                        obscureText: _obscurePassword,
                        textInputAction: TextInputAction.done,
                        onChanged: context.read<LoginCubit>().passwordChanged,
                        onSubmitted: (_) => context.read<LoginCubit>().submit(),
                        suffix: IconButton(
                          onPressed: () => setState(
                            () => _obscurePassword = !_obscurePassword,
                          ),
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      if (formError != null) ...[
                        const SizedBox(height: 12),
                        Text(
                          formError,
                          style: TextStyle(color: AppThemeColors.error(context)),
                        ),
                      ],
                      const SizedBox(height: 24),
                      AppButton(
                        title: 'Sign in',
                        busy: submitting == true,
                        onTap: () => context.read<LoginCubit>().submit(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
