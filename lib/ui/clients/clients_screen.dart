import 'package:flutter/material.dart';
import 'package:project_i/ui/themes/app_theme.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Clients Screen', style: TextStyle(color: AppColors.textPrimary)),
    );
  }
}
