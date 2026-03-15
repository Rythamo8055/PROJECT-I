# Project I Implementation Plan - Phase 1: Foundation & Auth

> **For agentic workers:** REQUIRED: Use superpowers:subagent-driven-development (if subagents available) or superpowers:executing-plans to implement this plan. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Establish the Flutter application foundation, configure Riverpod state management, and integrate Supabase authentication (Google/Email).

**Architecture:** Since the entire app is complex, we are breaking it into independent sub-project plans. Phase 1 sets up the Flutter environment with `supabase_flutter` and `flutter_riverpod`, replacing the default counter app.

**Tech Stack:** Flutter, Supabase, Riverpod

---

## Chunk 1: Flutter Project Initialization & Supabase Setup

### Task 1: Scaffold Flutter App and Dependencies

**Files:**
- Create: `pubspec.yaml`
- Modify: `lib/main.dart`
- Create: `test/smoke_test.dart`

- [ ] **Step 1: Write the failing test**

```dart
// test/smoke_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_i/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const ProjectIApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/smoke_test.dart`
Expected: FAIL since the project does not contain `project_i` library and `ProjectIApp`. Note: `flutter create` must be run by the agent prior to this to dump the standard template.

- [ ] **Step 3: Write minimal implementation**

First run `flutter create --org com.rythamo.project_i --project-name project_i .` to initialize if needed, then update:

```yaml
# Replace inside pubspec.yaml
name: project_i
description: "Freelancer invoice tracker."
publish_to: 'none'
version: 1.0.0+1
environment:
  sdk: ^3.6.0
dependencies:
  flutter:
    sdk: flutter
  supabase_flutter: ^2.8.2
  flutter_riverpod: ^2.6.1
  google_sign_in: ^6.2.2
dev_dependencies:
  flutter_test:
    sdk: flutter
```

```dart
// lib/main.dart
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
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter pub get && flutter test test/smoke_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add pubspec.yaml lib/main.dart test/smoke_test.dart
git commit -m "chore: setup flutter project foundation with riverpod"
```

### Task 2: Supabase Client Configuration

**Files:**
- Create: `lib/core/supabase_provider.dart`
- Create: `test/core/supabase_provider_test.dart`

- [ ] **Step 1: Write the failing test**

```dart
// test/core/supabase_provider_test.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_i/core/supabase_provider.dart';

void main() {
  test('supabaseClientProvider injects a SubabaseClient', () {
    final container = ProviderContainer();
    expect(
      () => container.read(supabaseClientProvider), 
      throwsA(isA<ProviderException>())
    );
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/core/supabase_provider_test.dart`
Expected: FAIL because `supabaseClientProvider` is missing.

- [ ] **Step 3: Write minimal implementation**

```dart
// lib/core/supabase_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Throws an unimplemented error if reading before Supabase is initialized.
final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  throw UnimplementedError('Supabase has not been initialized');
});
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/core/supabase_provider_test.dart`
Expected: PASS (It throws `UnimplementedError` normally until overridden in tests or `main`).

- [ ] **Step 5: Commit**

```bash
git add lib/core/ test/core/
git commit -m "feat: scaffold supabase client provider"
```
