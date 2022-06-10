import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import '../widgets/widgets.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class  CustomCardType2 extends StatelessWidget {
  //atributos
  final String imageUrl;
  final String? imageDesc; //atributo no obligatorio
  //constructor
  const CustomCardType2 ({Key? key, required this.imageUrl, this.imageDesc}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
      return Card(
        child: Column(
          children: [
            //carga imagen pero pueden haber retardos si no hay buena red
            //Image(
                //image: NetworkImage("https://res.litfad.com/site/img/item/2020/09/14/1758200/1200x1200.jpg")
           // )
            //carga imagen y mientras hay retardo muesta un gif que esta en resources
            FadeInImage(
              placeholder: const AssetImage("resources/images/jar-loading.gif"),
              image: NetworkImage(imageUrl),
              //ajuste la imagen, evita salto de reajuste cuando ha terminado de cargar
              width: double.infinity,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300)
            ),
            if(imageDesc!=null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(imageDesc ?? "--"), //atributo no obligatorio
              )

          ],
        ),
      );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////