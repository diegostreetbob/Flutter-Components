import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class CustomInputField extends StatelessWidget {
  //
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  //
  const CustomInputField(
      {
        Key? key,
        this.hintText,
        this.labelText,
        this.helperText,
        this.suffixIcon,
      }
      ) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: "",
        //primera letra de cada palabra en mayúsculas
        textCapitalization: TextCapitalization.words,
        onChanged: (value) { //imprime lo escrito
          print("value: $value");
        },
        //validación
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value != null) {
            return value.length < 4 ? "Mínimo escribir 4 caracteres" : "";
          } else {
            return "Este campo es requerido";
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText:helperText,
          suffixIcon: Icon(suffixIcon)
        )
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////