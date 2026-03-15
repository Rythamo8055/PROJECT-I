import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_i/ui/components/metric_card.dart';

void main() {
  testWidgets('MetricCard displays title and value', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MetricCard(
            title: 'Vitamin D',
            value: '83',
            glowColor: Colors.blue,
          ),
        ),
      ),
    );

    expect(find.text('Vitamin D'), findsOneWidget);
    expect(find.text('83'), findsOneWidget);
  });
}
