import 'package:flutter/material.dart';
import 'package:project_i/ui/themes/app_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings Screen', style: TextStyle(color: AppColors.textPrimary)),
    );
  }
}
