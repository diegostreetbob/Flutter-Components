import 'dart:ffi';

import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import '/screens/screens.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class  InputsScreen extends StatelessWidget {
  //
  const InputsScreen ({Key? key}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
          title: const Text("Inputs & Forms")
      ),
        //permite hacer Scroll a elementos que son muy grandes, a un solo eleemento, no es como
        //que sería para varios elementos.
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,vertical: 10
            ),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  initialValue: "",
                  //primera letra de cada palabra en mayúsculas
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value){ //imprime lo escrito
                    print("value: $value");
                  },
                  //validación
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator:(value){
                    if(value != null) {
                      return value.length < 4 ? "Mínimo escribir 4 caracteres" : "";
                    }else{
                      return "Este campo es requerido";
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: "Nombre del usuario",
                    labelText: "Nombre",
                    helperText: "Introduzca un mínimo de 4 caracteres",
                    suffixIcon: Icon(Icons.verified_user_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
