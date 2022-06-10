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
              children: const [
                CustomInputField(hintText: "Nombre",suffixIcon: Icons.login,keyboardType: TextInputType.text),
                SizedBox(height: 10),
                CustomInputField(hintText: "Apellidos",suffixIcon: Icons.login,keyboardType: TextInputType.text),
                SizedBox(height: 10),
                CustomInputField(hintText: "Email",suffixIcon: Icons.mail_outline,keyboardType: TextInputType.emailAddress),
                SizedBox(height: 10),
                CustomInputField(hintText: "Password",suffixIcon: Icons.security_rounded,keyboardType: TextInputType.visiblePassword,obscureText: true),
                SizedBox(height: 10)
              ],
            ),
          )
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
