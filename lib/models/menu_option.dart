import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class MenuOption {
  //
  final String route; //ruta
  final String name;  //nombre de la pantalla
  final Widget screen;//la pantalla
  final IconData icon;//icono
  //Constructor
  MenuOption({
      required this.route,
      required this.name,
      required this.screen,
      required this.icon,
  });
}
