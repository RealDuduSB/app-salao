import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Esteticista extends StatefulWidget {
  @override
  _EsteticistaState createState() => _EsteticistaState();
}

class _EsteticistaState extends State<Esteticista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo serviço"),
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Qual a sua especialidade?",
              style: GoogleFonts.arya(fontSize: 30.0),
            ),
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
                            Text("Harmonização facial",
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
                            Text("Preenchimento facial",
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
                            Text(
                              "Bichectomia",
                              style: GoogleFonts.lato(
                                  fontSize: 25.0, color: Colors.black),
                            ),
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
