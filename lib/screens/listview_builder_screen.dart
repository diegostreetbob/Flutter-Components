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
  final List<int> imagesIds = [1,2,3,4,5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  //creamos listeners
  @override
  void initState(){
    super.initState();
    //
    scrollController.addListener(() {
      //posición actual y máxima posición posible
      //print("${scrollController.position.pixels},${scrollController.position.maxScrollExtent},${imagesIds.last},${imagesIds.length}");
      //si se acerca al final llamamos a la operación de cargar mas elementos
      if((scrollController.position.pixels + 500)>(scrollController.position.maxScrollExtent)){

        fetchData();
      }
    });
  }

  //método asíncrono para simular una situación real de carga de imágenes donde suelen haber
  //retardos
  Future fetchData () async {
    //si ya está cargando no hacer nada
    if(isLoading) return;
    isLoading= true;
    setState((){});
    //simulamos el retardo
    await Future.delayed(const Duration(seconds: 3));
    //llamamos
    loadItems();
    isLoading=false;
    setState((){});
    //cuando termina de cargar sube todas las imágenes hacia arriba 120 pixeles
    scrollController.animateTo(
        scrollController.position.pixels+120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn
    );

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
      //atributos
      final size = MediaQuery.of(context).size;//tamaño de la pantalla actual
      return Scaffold(
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,//quita espacio en blanco superior
          removeBottom: true,//quita espacion en blanco inferior
          child: Stack(
            children: [
              ListView.builder(
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
              //para centrar elemento dentro del Stack
              if(isLoading)//solo lo muestra si está cargando
              Positioned(
                  bottom: 20,
                  //al centro de la pantalla
                  left: size.width * 0.5 - 30,
                  child: const _LoadingIcon()
              )
            ],
          ),
        ),
        );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100)
      ),
      width: 60,
      height: 60,
      child: const CircularProgressIndicator(),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
//https://picsum.photos/id/237/200/300