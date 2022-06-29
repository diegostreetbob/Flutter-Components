import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,//quita espacio en blanco superior
          removeBottom: true,//quita espacion en blanco inferior
          child: ListView.builder(
              itemCount: 10,
              itemBuilder:(BuildContext context, int index){
                return FadeInImage(
                    width: double.infinity, //evita saltos por reajuste de tamaño al cargar
                    height: 300, //evita saltos por reajuste de tamaño al cargar
                    fit: BoxFit.cover,//quita franja blanca entre imágenes
                    placeholder: const AssetImage("resources/images/jar-loading.gif"),
                    image: NetworkImage('https://picsum.photos/500/300?image=${index + 1}')
                    );
              },
          ),
        ),
        );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
//https://picsum.photos/id/237/200/300