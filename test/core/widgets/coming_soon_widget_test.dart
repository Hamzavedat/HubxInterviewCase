import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hubx_case/core/theme/app_theme.dart';
import 'package:hubx_case/core/widgets/coming_soon_widget.dart';

void main() {
  Widget buildTestableWidget(Widget child) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      home: child,
    );
  }

  group('ComingSoonWidget Tests', () {
    testWidgets('renders title and icon correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildTestableWidget(
          const ComingSoonWidget(
            title: 'My Garden',
            icon: Icons.eco_outlined,
            animationType: ComingSoonAnimationType.pulse,
          ),
        ),
      );

      expect(find.text('My Garden'), findsOneWidget);
      expect(find.byIcon(Icons.eco_outlined), findsOneWidget);
    });

    testWidgets('renders custom description', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildTestableWidget(
          const ComingSoonWidget(
            title: 'Diagnose',
            icon: Icons.qr_code_scanner_rounded,
            description: 'Diagnose feature will be available soon!',
          ),
        ),
      );

      expect(find.text('Diagnose feature will be available soon!'), findsOneWidget);
    });
  });
}
