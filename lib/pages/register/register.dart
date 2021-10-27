// ignore: avoid_web_libraries_in_flutter
import '../inicio/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'register_controller.dart';

class Registrar extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  final _controller = RegisterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _controller.formKey,
          child: Card(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text("Beautee | Registro",
                        style: GoogleFonts.lato(
                            fontSize: 30.0, color: Colors.white)),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _controller.displayName,
                            decoration: InputDecoration(
                              labelText: "Nome completo",
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                            ),
                            validator: (String val) {
                              if (val.isEmpty) {
                                return "Por favor digite o nome";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _controller.cpfUser,
                            decoration: InputDecoration(
                              labelText: "CPF/CNPJ",
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                            ),
                            validator: (String val) {
                              if (val.isEmpty) {
                                return "Por favor digite o seu CPF ou CNPJ";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                          ),
                          TextFormField(
                            controller: _controller.emailController,
                            decoration: InputDecoration(
                              labelText: "e-mail",
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                            ),
                            validator: (String val) {
                              if (val.isEmpty) {
                                return "Por favor digite email";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _controller.senhaController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "SENHA",
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                            ),
                            validator: (String val) {
                              if (val.isEmpty) {
                                return "Por favor digite a senha";
                              }
                              return null;
                            },
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: OutlinedButton(
                              onPressed: () {
                                if (_controller.formKey.currentState
                                    .validate()) {
                                  _registerAcount();
                                }
                              },
                              child: Text(
                                "REGISTRAR",
                                style: GoogleFonts.lato(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _registerAcount() async {
    final User user = (await _controller.auth.createUserWithEmailAndPassword(
            email: _controller.emailController.text,
            password: _controller.senhaController.text))
        .user;

    if (user != null) {
      if (user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _controller.displayName.text);
      final user1 = _controller.auth.currentUser;
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return MainPage(
          user: user1,
        );
      }));
    }
  }
}
