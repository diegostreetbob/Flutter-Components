import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class AppTheme {
  //colores primarios para cada tema, como atributos privados
  static const Color _primaryLight = Colors.lightBlueAccent;
  static const Color _primaryDark = Colors.white70;
  //Thema light personalizado
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: _primaryLight, //color primario
      appBarTheme: const AppBarTheme(color: _primaryLight, elevation: 0), //appbar
      iconTheme: const IconThemeData(color: Colors.green), //Color inonos sueltos
      listTileTheme: const ListTileThemeData(
          iconColor: Colors.lightBlueAccent), //Color iconos dentro de ListTile
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: _primaryLight)), //Stylo de los botones
      //Stilo tarjetas
      cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 15),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: _primaryLight,
          elevation: 5
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: _primaryLight,
              shape: const StadiumBorder(),
              elevation: 0
          )
      )
  );
  //Thema dark personalizado
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: _primaryDark, //color primario
      appBarTheme: const AppBarTheme(
          //appBar
          color: _primaryDark,
          elevation: 0),
      //Color inonos sueltos
      iconTheme: const IconThemeData(color: Colors.green),
      //Color iconos dentro de ListTile
      listTileTheme: const ListTileThemeData(iconColor: Colors.lightBlueAccent),
      //fondo del scaffold
      scaffoldBackgroundColor: Colors.black,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: _primaryLight)), //Stylo de los botones
      //Stilo tarjetas
      cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 15),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _primaryDark,
          elevation: 5
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: _primaryDark,
              shape: const StadiumBorder(),
              elevation: 0
          )
      )
  );
}
////////////////////////////////////////////////////////////////////////////////////////////////////
