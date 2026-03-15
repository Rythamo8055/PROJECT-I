import 'package:flutter/material.dart';
import 'package:project_i/ui/themes/app_theme.dart';

class InvoicesScreen extends StatelessWidget {
  const InvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Invoices Screen', style: TextStyle(color: AppColors.textPrimary)),
    );
  }
}
