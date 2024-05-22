import 'package:blog_app/core/app_color_pallete.dart';
import 'package:blog_app/features/authentication/presentation/pages/login_page.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPAge extends StatefulWidget {
  const SignUpPAge({super.key});

  @override
  State<SignUpPAge> createState() => _SignUpPAgeState();
  static route() {
    return MaterialPageRoute(
      builder: (context) {
        return const SignUpPAge();
      },
    );
  }
}

class _SignUpPAgeState extends State<SignUpPAge> {
  final formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Crear una cuenta',
                style: TextStyle(
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthenticationField(
                  hintText: 'Nombre', controller: nameController),
              const SizedBox(height: 15),
              AuthenticationField(
                  hintText: 'Correo Electronico', controller: emailController),
              const SizedBox(height: 15),
              AuthenticationField(
                hintText: 'Contraseña',
                controller: passwordController,
                isObsureText: true,
              ),
              const SizedBox(height: 20),
              const AuthenticationGradientButton(
                buttonText: 'Registrarse',
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    LoginPage.route(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                      text: '¿Tiene una cuenta?',
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                        TextSpan(
                          text: ' Iniciar sesion',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColorPallete.gradient2,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //prueba
}
