import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:flutter/material.dart';

class SignUpPAge extends StatefulWidget {
  const SignUpPAge({super.key});

  @override
  State<SignUpPAge> createState() => _SignUpPAgeState();
}

class _SignUpPAgeState extends State<SignUpPAge> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Crear cuenta',
              style: TextStyle(
                fontSize: 51,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            AuthenticationField(hintText: 'Nombre'),
            SizedBox(height: 15),
            AuthenticationField(hintText: 'Correo Electronico'),
            SizedBox(height: 15),
            AuthenticationField(hintText: 'Contraseñaxd'),
            SizedBox(height: 20),
            AuthenticationField(hintText: 'Registrar'),
          ],
        ),
      ),
    );
  }
  //prueba
}
