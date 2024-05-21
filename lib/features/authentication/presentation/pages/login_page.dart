import 'package:blog_app/core/app_color_pallete.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_gradient_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
//  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    // nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
              const AuthenticationGradientButton(),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                    text: '¿No tiene una cuenta?',
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                        text: ' Crear cuenta',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppColorPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //prueba
}
