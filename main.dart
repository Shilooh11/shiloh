import 'package:flutter/material.dart';
import 'package:shiloh/login.dart';
import 'package:shiloh/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'Shiloh',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF4EFEF )),
      useMaterial3: false,
      ),
      initialRoute: LoginView.id,
      routes: {
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) => const RegisterView(),
        
        // Aquí debe estar definida la ruta para RegistroView
        // Define más rutas si es necesario
      },
      //theme: AppTheme(selectedColor: 0).theme(),

  );

  }
}

