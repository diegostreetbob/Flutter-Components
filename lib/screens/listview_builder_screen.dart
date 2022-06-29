import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen ({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  //atributos
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  //creamos listeners
  @override
  void initState(){
    super.initState();
    //
    scrollController.addListener(() {
      //posición actual y máxima posición posible
      print("${scrollController.position.pixels},${scrollController.position.maxScrollExtent},${imagesIds.last},${imagesIds.length}");
      //si se acerca al final llamamos a la operación de cargar mas elementos
      if((scrollController.position.pixels + 500)>(scrollController.position.maxScrollExtent)){
        loadItems();
      }
    });
  }

  void loadItems(){
    final lastId = imagesIds.last;
    //añade 5 elementos a la lista,
    imagesIds.addAll(
        [1,2,3,4,5].map((e) => lastId+e)
    );
    setState((){});//redibujamos
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,//quita espacio en blanco superior
          removeBottom: true,//quita espacion en blanco inferior
          child: ListView.builder(
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder:(BuildContext context, int index){
                return FadeInImage(
                    width: double.infinity, //evita saltos por reajuste de tamaño al cargar
                    height: 300, //evita saltos por reajuste de tamaño al cargar
                    fit: BoxFit.cover,//quita franja blanca entre imágenes
                    placeholder: const AssetImage("resources/images/jar-loading.gif"),
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
                    );
              },
          ),
        ),
        );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
//https://picsum.photos/id/237/200/300