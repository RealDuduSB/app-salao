import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'maoepe.dart';
import 'cabelo.dart';
import 'esteticista.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo serviço",
            style: GoogleFonts.lato(fontSize: 25.0, color: Colors.white)),
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Indique onde você irá atender",
                style: GoogleFonts.lato(fontSize: 25.0, color: Colors.black)),
                Divider(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Somente no local indicado em meu perfil",
                                style: GoogleFonts.lato(
                                    fontSize: 25.0, color: Colors.black)),
                          ],
                        )),
                  ),
                  Divider(),
                  Container(
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("No local indicado e domicilios",
                                style: GoogleFonts.lato(
                                    fontSize: 25.0, color: Colors.black)),
                          ],
                        )),
                  ),
                  Divider(),
                  Container(
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text("Apenas nos domicilios de clientes",
                                style: GoogleFonts.lato(
                                    fontSize: 25.0, color: Colors.black)),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
