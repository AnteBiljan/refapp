import 'package:flutter/material.dart';
import 'package:refapp/app/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool busy;

  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.busy = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: busy ? null : onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: busy
              ? SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppThemeColors.background(context),
                  ),
                )
              : Text(title),
        ),
      ),
    );
  }
}
