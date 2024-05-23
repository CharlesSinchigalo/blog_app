import 'package:blog_app/core/app_theme.dart';
import 'package:blog_app/core/secrets/app_secrets.dart';

import 'package:blog_app/features/authentication/presentation/pages/login_page.dart';

import 'package:flutter/material.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseurl,
    anonKey: AppSecrets.supabaseAnonkey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog app',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
