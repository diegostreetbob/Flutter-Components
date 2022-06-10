import 'package:flutter/material.dart';
import 'package:componentes/routes/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:componentes/screens/listview2_screen.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter")
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon),
             trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Navigator.pushNamed(context,AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length)
      );
  }
}

