import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/shoppinglist.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var appState = context.watch<ShoppingList>();
    var shoplist = appState.items;

    if (shoplist.isEmpty) {
      return Center(
        child: Text("No items yet"),
      );
    }

    return Center(
      child: ListView(
        children: [
          Text("Your Shopping List:"),

          for (var item in appState.items)
            Text(item),
          
        ],
      ),
    );
  }
}