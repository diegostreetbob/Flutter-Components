import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import 'dart:math';
////////////////////////////////////////////////////////////////////////////////////////////////////
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  //
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);
  //
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: const Text("Animated Container")),
      body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadiusGeometry
            ),
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic ,
          )
      ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_circle_outline),
          onPressed: ()=>onChangeShape(),
        ),
    );
  }
  void onChangeShape(){
    final random = Random();
    //entre 70 y 300
    _width=random.nextInt(300).toDouble() +70;
    _height=_width;
    _color =  Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        random.nextDouble()
    );
    _borderRadiusGeometry = BorderRadius.circular(random.nextInt(80).toDouble() +10);
    //actualizamos estado ya que estamos dentro de un statefull widget.
    setState((){});
  }
}//
////////////////////////////////////////////////////////////////////////////////////////////////////


