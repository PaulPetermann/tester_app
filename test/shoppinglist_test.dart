import 'package:flutter_test/flutter_test.dart';
import 'package:test1/shoppinglist.dart';

void main(){
  group("testing the shopping list functionality", (){
    var list1 = ShoppingList();

    test('starting list should be empty',(){
      expect(list1.items.isEmpty, true);
    });
    test('A new item should be added', () {
      var item = "lemons";
      list1.add(item);
      expect(list1.items.contains(item), true);
    });

    test('An item should be removed', () {
      var item = "salt";
      list1.add(item);
      expect(list1.items.contains(item), true);
      list1.remove(item);
      expect(list1.items.contains(item), false);
    });
  });
}