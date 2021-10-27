import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'maoepe.dart';
import 'cabelo.dart';
import 'esteticista.dart';

class AddService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0.0,
        title: Text("Novo serviço",
            style: GoogleFonts.lato(fontSize: 25.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Indique sua especialidade",
                style: GoogleFonts.lato(fontSize: 25.0, color: Colors.black)),
                Divider(),
            Container(
              child: Column(
                children: [
                  Container(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MaoePe()),
                          );
                        },
                        child: Column(
                          children: [
                            Text("Mãos e pés",
                                style: GoogleFonts.lato(
                                    fontSize: 25.0, color: Colors.black)),
                          ],
                        )),
                  ),
                  Divider(),
                  Container(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cabelo()),
                          );
                        },
                        child: Column(
                          children: [
                            Text("Cabelo",
                                style: GoogleFonts.lato(
                                    fontSize: 25.0, color: Colors.black)),
                          ],
                        )),
                  ),
                  Divider(),
                  Container(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Esteticista()),
                          );
                        },
                        child: Column(
                          children: [
                            Text("Estetica",
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
