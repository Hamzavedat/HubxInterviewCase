import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hubx_case/core/theme/app_theme.dart';
import 'package:hubx_case/core/widgets/platform_action_dialog.dart';

void main() {
  Widget buildTestableWidget(Widget child) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      home: Scaffold(body: child),
    );
  }

  group('PlatformActionDialog Tests', () {
    testWidgets('renders title, content, and button text', (WidgetTester tester) async {
      bool actionPressed = false;

      await tester.pumpWidget(
        buildTestableWidget(
          PlatformActionDialog(
            title: 'Barcode Scanned',
            content: 'https://plant.id/scan/123',
            buttonText: 'OK',
            onPressed: () {
              actionPressed = true;
            },
          ),
        ),
      );

      expect(find.text('Barcode Scanned'), findsOneWidget);
      expect(find.text('https://plant.id/scan/123'), findsOneWidget);
      expect(find.text('OK'), findsOneWidget);

      await tester.tap(find.text('OK'));
      expect(actionPressed, true);
    });
  });
}
