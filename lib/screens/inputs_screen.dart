import 'dart:ffi';

import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import '/screens/screens.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class  InputsScreen extends StatelessWidget {
  const InputsScreen ({Key? key}) : super(key: key);

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

                )
              ],
            ),
          )
      ),
    );
  }
}
