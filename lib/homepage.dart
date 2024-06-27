import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/shoppinglist.dart';

class ShopPage extends StatelessWidget {

  final controll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<ShoppingList>();

    return Scaffold(
      appBar: AppBar(title: const Text("Shopping List"),),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            TextField(controller: controll,
            decoration: const InputDecoration(hintText: "Enter Item"),),
            const SizedBox(height: 10,),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    if(controll.text != ""){
                      appState.add(controll.text);
                    }
                  },
                  child: Text("add")
                ),
                ElevatedButton(
                  onPressed: (){
                    if(appState.items.contains(controll.text)){
                    appState.remove(controll.text);
                    }
                  },
                  child: Text("remove")
                ),
              ],
            )
          ],
          ),
      ),
    );
  }
}
