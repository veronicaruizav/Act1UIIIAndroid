import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login AccessPhone ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/veronicaruizav/imagenesandroid/main/fondo.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/veronicaruizav/imagenesandroid/main/logo.png',
                    width: 80,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text('AccessPhone',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xff13334d))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const Text('Un gusto de volverte a ver',
                            style: TextStyle(fontSize: 20)),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: 'Usuario',
                              prefixIcon: Icon(Icons.person),
                              contentPadding: EdgeInsets.all(10),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2))),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: 'Contraseña',
                              prefixIcon: Icon(Icons.lock),
                              contentPadding: EdgeInsets.all(10),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2))),
                        ),
                      ),
                      const SizedBox(height: 50),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Inicia Sesión',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
