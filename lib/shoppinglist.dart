import 'package:flutter/material.dart';

class ShoppingList extends ChangeNotifier{
  final List<String> items = [];

  void add(String item){
    items.add(item);
  }

  void remove(String item){
    items.remove(item);
  }
}