import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static String id = 'register_view';

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05), // Espacio sobre el título

            const Text(
              'Shiloh',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
                    SizedBox(height: size.height * 0.01),
          //Imagen
                    Image.asset(
                    'assets/pesas.png', 
                     width: size.width * 0.7,
          ),
                    SizedBox(height: size.height * 0.01),
          
          //Center(
            //child: SingleChildScrollView(
              //child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //nombre
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.015),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Nombres',
                        filled: true,
                        prefixIcon: const Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  //Apellidos
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.015),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Apellidos',
                        filled: true,
                        prefixIcon: const Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  //email
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.015),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'email',
                        filled: true,
                        prefixIcon: const Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  //Password
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.015),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        prefixIcon: const Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  // Vuelva a escribir su contraseña
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.015),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        prefixIcon: const Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  //fecha
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.015),
                    child: TextField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        labelText: 'Date',
                        filled: true,
                        prefixIcon: const Icon(Icons.calendar_today),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      readOnly: true,
                      onTap: () {
                        _selectedDate(context);
                      },
                    ),
                  ),
                  ElevatedButton(
                  onPressed: ()=> {
                    //Navigator.pushNamed(context, View2.id)
                  },
                  child:  const Text('Registrate  '),
                  ),
                  const SizedBox(
                  height: 30.0, 
                  )
                ],
              //),
            //),
          ),
        ],
      ),
    
    )
    );
  }

  Future<void> _selectedDate(BuildContext context) async {
    DateTime? _pick = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    );
    if (_pick != null) {
      setState(() {
        _dateController.text = _pick.toString().split(" ")[0];
      });
    }
  }
}
