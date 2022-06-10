import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import '../widgets/widgets.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Widget")),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: "https://res.litfad.com/site/img/item/2020/09/14/1758200/1200x1200.jpg",imageDesc: "Paisaje marimo"),
          SizedBox(height: 20),
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: "https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg", imageDesc: 'Paisaje de montaña',),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
