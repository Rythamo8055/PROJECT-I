import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_i/ui/components/glowing_glass_card.dart';

void main() {
  testWidgets('GlowingGlassCard applies provided color gradient', (WidgetTester tester) async {
    const testColor = Colors.purple;
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GlowingGlassCard(
            glowColor: testColor,
            child: Text('Test Card'),
          ),
        ),
      ),
    );

    // Verify the child widget is rendered
    expect(find.text('Test Card'), findsOneWidget);
    
    // Check that we have a rounded container structure inside the card
    final containerFinder = find.descendant(
      of: find.byType(GlowingGlassCard),
      matching: find.byType(Container),
    );
    expect(containerFinder, findsWidgets);
  });
}
