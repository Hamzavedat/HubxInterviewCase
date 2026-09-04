import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hubx_case/core/theme/app_theme.dart';
import 'package:hubx_case/features/dashboard/widgets/plant_app_bottom_bar.dart';

void main() {
  Widget buildTestableWidget(Widget child) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        theme: AppThemes.lightTheme,
        home: Scaffold(bottomNavigationBar: child),
      ),
    );
  }

  group('PlantAppBottomBar Tests', () {
    testWidgets('renders all tab labels correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildTestableWidget(
          const PlantAppBottomBar(currentIndex: 0),
        ),
      );

      expect(find.text('Home'), findsOneWidget);
      expect(find.text('Diagnose'), findsOneWidget);
      expect(find.text('My Garden'), findsOneWidget);
      expect(find.text('Profile'), findsOneWidget);
    });

    testWidgets('triggers onTap callback when tab is selected', (WidgetTester tester) async {
      int selectedIndex = 0;

      await tester.pumpWidget(
        buildTestableWidget(
          PlantAppBottomBar(
            currentIndex: 0,
            onTap: (index) {
              selectedIndex = index;
            },
          ),
        ),
      );

      await tester.tap(find.text('Diagnose'));
      expect(selectedIndex, 1);

      await tester.tap(find.text('Profile'));
      expect(selectedIndex, 4);
    });
  });
}
