import 'package:flutter/material.dart';

class AuthenticationField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObsureText;

  const AuthenticationField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObsureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText es requerido';
        }
        return null;
      },
      obscureText: isObsureText,
    );
  }
}
