import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_i/ui/themes/app_theme.dart';
import 'package:project_i/ui/navigation/main_scaffold.dart';

void main() {
  runApp(const ProviderScope(child: ProjectIApp()));
}

class ProjectIApp extends StatelessWidget {
  const ProjectIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project I',
      theme: AppThemes.darkTheme,
      home: const MainScaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}
