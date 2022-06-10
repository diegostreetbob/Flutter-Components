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
                  const CustomInputField(hintText: "Nombre",suffixIcon: Icons.login,keyboardType: TextInputType.text),
                  const SizedBox(height: 10),
                  const CustomInputField(hintText: "Apellidos",suffixIcon: Icons.login,keyboardType: TextInputType.text),
                  const SizedBox(height: 10),
                  const CustomInputField(hintText: "Email",suffixIcon: Icons.mail_outline,keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 10),
                  const CustomInputField(hintText: "Password",suffixIcon: Icons.security_rounded,keyboardType: TextInputType.visiblePassword,obscureText: true),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      child: const Text("Guardar"),
                      onPressed: (){
                        //para minimizar el teclado cada vez que damos a guardar
                        FocusScope.of(context).requestFocus(FocusNode());
                        //aseguro no null
                        if(myFormKey.currentState != null) {
                          //
                          if(!myFormKey.currentState!.validate()){
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
