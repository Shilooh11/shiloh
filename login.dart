import 'package:flutter/material.dart';
import 'package:shiloh/register.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'login_view';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [

   
                Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.05,
            ),
            child: const Text(
              'Shiloh',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
                    SizedBox(height: size.height * 0.01),

                 // Imagen
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Image.asset(
              'assets/pesas.png',
              width: size.width * 0.8,
            ),
          ),
                    SizedBox(height: size.height * 0.05),

                    Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                    
         //email
             TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Ingresa tu correo',
                    filled: true,
                    prefixIcon: const Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
            //Password
             TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    filled: true,
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
            height: 10.0
          ),
          
          //olvidaste tu contraseña?
          TextButton(
                onPressed: (){
                Navigator.pushNamed(context, RegisterView.id);
          },
              child: const Text(
                '¿Olvidaste tu contraseña?',
                 style: TextStyle(
                       color:Colors.purple,
                       decoration: TextDecoration.underline,
          ),
          ),
          ),
           const SizedBox(
            height: 0.01),
          // no tienes una cuenta ?
          TextButton(
                onPressed: (){
                Navigator.pushNamed(context, RegisterView.id);
          },
              child: const Text(
                '¿No tienes una Cuenta?',
                 style: TextStyle(
                       color:Colors.purple,
                       decoration: TextDecoration.underline,
          ),
          ),
          ),
          
          //button
            MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.black),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
          ),
          ),
            const SizedBox(
            height: 5.0
          )
          ],
          ),
          ),
          ],
      ),
    );
          }
          }