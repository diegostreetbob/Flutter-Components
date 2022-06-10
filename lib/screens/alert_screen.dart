import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import 'dart:io';
////////////////////////////////////////////////////////////////////////////////////////////////////
class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            //uso de operador ternario en lugar de if..else
            onPressed: ()=> Platform.isIOS ? displayDialogIOS(context):displayDialogAndroid(context),
              //onPressed: () => displayDialogAndroid(context), //función a ejecutar Android
              //onPressed: () => displayDialogIOS(context), //función a ejecutar Android
              //onPressed:displayDialog,//caso donde no hay parámetros
              child: const Text("Mostrar Alerta")
          )
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context) //lleva a home
      ),
    );
  }

  //Operaciones
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true, //para que nos permita cerrar el diálogo haciendo tap fuera de el
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text("titulo"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              //el tamaño de la columna, eje y se ajusta al contenido
              children: const [
                Text("Este es el contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), //cierra
                  child: const Text("Cancelar")
              )

            ],
          );
        }
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true, //para que nos permita cerrar el diálogo haciendo tap fuera de el
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text("titulo"),
              content: Column(
              mainAxisSize: MainAxisSize.min,
              //el tamaño de la columna, eje y se ajusta al contenido
              children: const [
                Text("Este es el contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), //cierra
                  child: const Text("Aceptar")
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context), //cierra
                  child: const Text("Cancelar")
              )

            ],
          );
        }
    );
  }
  //
}
////////////////////////////////////////////////////////////////////////////////////////////////////