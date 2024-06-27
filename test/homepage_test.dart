import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test1/homepage.dart';
import 'package:provider/provider.dart';
import 'package:test1/shoppinglist.dart';


Widget createHomeScreen() => ChangeNotifierProvider<ShoppingList>(
      create: (context) => ShoppingList(),
      child: MaterialApp(
        home: ShopPage(),
      ),
    );

void main() {

  group("testing if stuff shows up", (){
    testWidgets("Text field should show up", (WidgetTester tester) async{
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(TextField), findsOneWidget);
    });
    testWidgets("Buttons should show up", (WidgetTester tester) async{
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(ElevatedButton), findsNWidgets(2));
    });
    testWidgets("Text on buttons should show up", (WidgetTester tester) async{
      await tester.pumpWidget(createHomeScreen());
      expect(find.text("add"), findsOneWidget);
      expect(find.text("remove"),findsOneWidget);
    });
  });
}