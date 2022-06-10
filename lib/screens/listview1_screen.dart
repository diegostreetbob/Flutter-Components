import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////////////
class Listview1Screen extends StatelessWidget {
//Atributos
final games = const["Megaman", "Metal gear","Super Smash","Final Fantasy"];

//Constructor
const Listview1Screen ({Key? key}) : super(key: key);
//Operaciones
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View tipo 1'),
        ),
        body: ListView(
          children: [
            ...games.map((game) => ListTile(
                title:Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_outlined))
            ).toList()
          ],

        )
        );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////

