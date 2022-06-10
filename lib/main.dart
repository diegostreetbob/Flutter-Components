import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import 'screens/screens.dart';
import 'package:componentes/routes/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
void main() => runApp(const MyApp());
////////////////////////////////////////////////////////////////////////////////////////////////////
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //Manejo de rutas
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,//entra si encontrar la ruta en un Navigator.xx
      //copiamos el thema y dentro de copyWith sobreescribimos las propiedades que queremos cambiar.
      theme: AppTheme.lightTheme,
      //theme: AppTheme.darkTheme,
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
