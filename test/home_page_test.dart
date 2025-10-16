import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_portfolio/pages/home_page.dart';

void main() {
  testWidgets('HomePage shows hero, CTA buttons and FAB', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Allow animations to settle
    await tester.pumpAndSettle();

    // Verify main static texts are present
    expect(find.text('Développeur Web & Mobile Expert'), findsOneWidget);

    // Verify CTA buttons
    expect(find.text('Voir mes projets'), findsOneWidget);
    expect(find.text('Télécharger CV'), findsOneWidget);

    // Verify floating action button (contact)
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.text('Me contacter'), findsOneWidget);
  });
}
