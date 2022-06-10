import 'dart:ffi';

import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class CustomInputField extends StatelessWidget {
  //
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType keyboardType;//validaciones
  final bool obscureText;
  final String formProperty;
  final Map<String,String> formValues;
  //
  CustomInputField(
      {
        Key? key,
        this.hintText,
        this.labelText,
        this.helperText,
        this.suffixIcon,
        required this.keyboardType,
        this.obscureText=false,//si no se envía sera false por defecto
        required this.formProperty,
        required this.formValues
      }
      ) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        autofocus: true,
        initialValue: "",
        //primera letra de cada palabra en mayúsculas
        textCapitalization: TextCapitalization.words,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        //validación
        autovalidateMode: AutovalidateMode.onUserInteraction,
        //todo investigar validaciones con regex
        validator: (value) {
           if (value != null) {
            if (value.isEmpty) return 'Please enter some text';
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