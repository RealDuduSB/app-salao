import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cabelo extends StatefulWidget {
  @override
  _CabeloState createState() => _CabeloState();
}

class _CabeloState extends State<Cabelo> {
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
            Text("Qual a sua especialidade?",
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
                            Text("Feminino",
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
                            Text("Masculino",
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
                            Text("Todos",
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
