import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class Listview2Screen extends StatelessWidget {
//Atributos
final games = const["Megaman", "Metal gear","Super Smash","Final Fantasy"];
//Constructor
const Listview2Screen ({Key? key}) : super(key: key);
//Operaciones
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View tipo 2')
        ),
        body: ListView.separated(
            itemCount: games.length,
            itemBuilder:(context,index)=>ListTile(
                title:Text(games[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: (() {
                  print(games[index]);
                }),
            ),
            separatorBuilder: (_,__)=> const Divider()
        )
        );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////

