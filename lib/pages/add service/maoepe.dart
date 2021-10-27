import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaoePe extends StatefulWidget {
  @override
  _MaoePeState createState() => _MaoePeState();
}

class _MaoePeState extends State<MaoePe> {
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
            Text("Indique sua especialidade",
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
                            Text("Manicure e pedicure",
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
                            Text("Podologia",
                                style: GoogleFonts.lato(
                                    fontSize: 25.0, color: Colors.black)),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
