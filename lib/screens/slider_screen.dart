import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:componentes/theme/app_theme.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final double _sliderValueMin = 100;
  final double _sliderValueMax = 400;
  double _sliderValue = 100;
  bool _sliderEnabled = false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
          title: const Text("Sliders & Checks")
      ),
      body: Column(
        children: [
          Slider.adaptive( //.adaptative para que se adapte a la visión habitual de Andro o Ios
              divisions:20,//divide la escala en 10 tramos marcados con puntos.
              min: _sliderValueMin,
              max: _sliderValueMax,
              value: _sliderValue,
              activeColor: AppTheme.primaryLight,
              onChanged: (value){
                if(_sliderEnabled) {
                  _sliderValue = value;
                  setState(() {});
                }else{
                  null;
                  setState(() {});
                }
              }
          ),
          CheckboxListTile(
              activeColor: AppTheme.primaryLight,
              title: const Text("Habilitar Slider"),
              value: _sliderEnabled,
              onChanged: (value)=>setState(()=>_sliderEnabled = value ?? true//en caso de null por defecto true
              )
          ),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primaryLight,
              title: const Text("Habilitar Slider"),
              value: _sliderEnabled,
              onChanged: (value)=>setState(()=>_sliderEnabled = value
              )
          ),
          Expanded(//Coge el espacio libre de la columna que deja el Slider
            child: SingleChildScrollView(//Permite scroll en la imagen si es mas alta que la pantalla
              child: Image(
                  image: const NetworkImage("https://pics.filmaffinity.com/the_batman-449856406-large.jpg"),
                  fit: BoxFit.contain,
                  width: _sliderValue
              ),
            ),
          ),
          const SizedBox(height:20)//espacio en la parte inferior
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////