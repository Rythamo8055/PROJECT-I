import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_i/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const ProjectIApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
