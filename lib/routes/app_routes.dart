import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import '/screens/screens.dart';
import 'package:componentes/models/models.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class AppRoutes{
  //
  static const initialRoute = "/home";
  //manera optima de hacer las rutas
  static final menuOptions = <MenuOption>[
    //MenuOption(route: "/home",      name: "Home Screen", screen: const HomeScreen(),      icon: Icons.house),
    MenuOption(route: "/listview1", name: "List View 1", screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: "/listview2", name: "List View 2", screen: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: "/cardscreen", name: "Card Screen", screen: const CardScreen(), icon: Icons.card_travel),
    MenuOption(route: "/alertscreen", name: "Alert Screen", screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: "/avatarscreen", name: "Avatar Screen", screen: const AvatarScreen(), icon: Icons.supervised_user_circle_rounded),
    MenuOption(route: "/animatedscreen", name: "Animated Screen", screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined),
    MenuOption(route: "/inputsscreens", name: "Inputs Screen", screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: "/sliderscreen", name: "Slider & Checks", screen: const SliderScreen(), icon: Icons.door_sliding)
  ];
  //Lo que se añada en menú options se optione con esta operación static
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    //defino el mapa vacio
    Map<String, Widget Function(BuildContext)> appRoutes={};
    //ruta a home
    appRoutes.addAll({"/home":(BuildContext context)=>const HomeScreen()});
    //leo el vartor menu options
    for(final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  /*otra manera de hacer las rutas
  static Map<String, Widget Function(BuildContext)> routes ={
      "/home"     : (BuildContext context) => const HomeScreen(),
      "/listview1": (BuildContext context) => const Listview1Screen(),
      "/listview2": (BuildContext context) => const Listview2Screen()
  };
  */
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=>const Listview1Screen(),
    );
  }

}
////////////////////////////////////////////////////////////////////////////////////////////////////