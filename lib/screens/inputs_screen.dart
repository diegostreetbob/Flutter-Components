import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
import '../widgets/custom_imput_field.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////
class  InputsScreen extends StatelessWidget {
  //
  const InputsScreen ({Key? key}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
      //Para tener acceso a los campos del formulario, en formulario y todo su estado se puede
      //referenciar desde myFormKey
      final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
      //valores del formulario
      final Map<String,String> formValues = {
        "nombre":"Fernando",
        "apellidos":"Lopez",
        "email":"mail@mail.com",
        "password":"123",
        "roles":"Admin"
      };
      //
      return Scaffold(
      appBar: AppBar(
          title: const Text("Inputs & Forms")
      ),
        //permite hacer Scroll a elementos que son muy grandes, a un solo eleemento, no es como
        //que sería para varios elementos.
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Form(//envuelve al widget que tiene los campos de formulario
                key: myFormKey,
                child: Column(
                children: [
                  CustomInputField(hintText: "Nombre",suffixIcon: Icons.login,keyboardType: TextInputType.text,formProperty:"nombre" ,formValues: formValues ),
                  const SizedBox(height: 7),
                  CustomInputField(hintText: "Apellidos",suffixIcon: Icons.login,keyboardType: TextInputType.text,formProperty:"apellidos" ,formValues: formValues),
                  const SizedBox(height: 7),
                  CustomInputField(hintText: "Email",suffixIcon: Icons.mail_outline,keyboardType: TextInputType.emailAddress,formProperty:"email" ,formValues: formValues),
                  const SizedBox(height: 7),
                  CustomInputField(hintText: "Password",suffixIcon: Icons.security_rounded,keyboardType: TextInputType.visiblePassword,obscureText: true,formProperty:"password" ,formValues: formValues),
                  const SizedBox(height: 7),
                  ElevatedButton(
                      child: const Text("Guardar"),
                      onPressed: (){
                        //para minimizar el teclado cada vez que damos a guardar
                        FocusScope.of(context).requestFocus(FocusNode());
                        if(myFormKey.currentState != null) {     //aseguro no null
                          if(myFormKey.currentState!.validate()){//si no hay errores
                            print(formValues);
                          }else{                                 //si hay errores
                            print("formulario no válido");
                          }
                        }
                      },
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
