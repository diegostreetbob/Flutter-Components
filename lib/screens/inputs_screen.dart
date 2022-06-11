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
        "role":"Admin"
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
                  DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                            value:"Basic",
                            child: Text("Basic")
                        ),
                        DropdownMenuItem(
                            value:"Admin",
                            child: Text("Admin")
                        ),
                        DropdownMenuItem(
                            value:"Super Admin",
                            child: Text("Super Admin")
                        )
                      ],
                      onChanged: (value){
                        //si value!=null guardamos el role si no asignamos el rol basico
                        value!=null?formValues["role"]=value.toString():"basic";
                      }/*,
                    decoration:InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      isDense: true,
                    ) */
                  ),
                  ///
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
