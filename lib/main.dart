import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: ProjectIApp()));
}

class ProjectIApp extends StatelessWidget {
  const ProjectIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project I',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF0F4F8), // Soft pastel base
        primaryColor: const Color(0xFF477EEB), // Electric blue
      ),
      home: const Scaffold(
        body: Center(child: Text('Welcome to Project I Dashboard')),
      ),
    );
  }
}
