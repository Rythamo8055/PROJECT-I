import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_i/ui/themes/app_theme.dart';
import 'package:project_i/ui/navigation/glass_bottom_nav.dart';
import 'package:project_i/ui/dashboard/dashboard_screen.dart';
import 'package:project_i/ui/invoices/invoices_screen.dart';
import 'package:project_i/ui/clients/clients_screen.dart';
import 'package:project_i/ui/settings/settings_screen.dart';

final currentTabProvider = StateProvider<int>((ref) => 0);

class MainScaffold extends ConsumerWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentTabProvider);

    final screens = [
      const DashboardScreen(),
      const InvoicesScreen(),
      const ClientsScreen(),
      const SettingsScreen(),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          IndexedStack(
            index: currentIndex,
            children: screens,
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: MediaQuery.paddingOf(context).bottom + 20, // Hovering above the bottom safe area
            child: GlassBottomNav(
              currentIndex: currentIndex,
              onTap: (index) {
                ref.read(currentTabProvider.notifier).state = index;
              },
            ),
          ),
        ],
      ),
    );
  }
}
