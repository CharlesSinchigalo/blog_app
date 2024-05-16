import 'package:blog_app/core/app_color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthenticationGradientButton extends StatelessWidget {
  const AuthenticationGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColorPallete.gradient1,
            AppColorPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(400, 50),
          ),
          onPressed: null,
          child: const Text(
            'Registrarse',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          )),
    );
  }
}
