import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test1/main.dart';

void main() {
  testWidgets('Starting Page should be the Shop', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text("Shopping List"), findsOneWidget);
  });
  group("testing app functionality",(){
    testWidgets('adding Items should work', (WidgetTester tester) async {

      await tester.pumpWidget(const MyApp());
      await tester.enterText(find.byType(TextField), "Lemons");
      await tester.tap(find.text("add"));
      await tester.tap(find.byIcon(Icons.leaderboard));
      expect(find.text("Lemons"),findsOneWidget);
    });
    testWidgets('removing Items should work', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.enterText(find.byType(TextField), "Lemons");
      await tester.tap(find.text("add"));
      await tester.tap(find.byIcon(Icons.leaderboard));
      expect(find.text("Lemons"),findsOneWidget);
      await tester.tap(find.byIcon(Icons.home));
      await tester.enterText(find.byType(TextField), "Lemons");
      await tester.tap(find.text("remove"));
      await tester.tap(find.byIcon(Icons.leaderboard));
      await tester.pumpAndSettle();
      expect(find.text("Lemons"),findsNothing);
    });
  });
}
