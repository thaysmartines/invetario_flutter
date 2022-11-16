// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 150, 27),
      body: Padding(
        padding: EdgeInsets.all(10), //espaçamento de fora
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/logo.png'),
              ),

              Divider(),

              TextFormField(
                autofocus:
                    true, //quando acessar essa tela, vai focar nesta campo
                keyboardType: TextInputType
                    .number, // carrega o teclado para somente númerico se for o caso
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "USUÁRIO",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(), //cria um espaçamento entre os dois campos (TextFormFild)
              TextFormField(
                autofocus: true,
                obscureText:
                    true, //quando acessar essa tela, vai focar nesta campo
                keyboardType: TextInputType
                    .text, // carrega o teclado para somente númerico se for o caso
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "SENHA",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ButtonTheme(
                  height: 60.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () => {},
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Color.fromARGB(255, 224, 154, 4)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
