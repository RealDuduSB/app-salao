import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sbs_app/pages/add%20service/addservice.dart';
import 'package:sbs_app/pages/chat/chat.dart';

class MainPage extends StatefulWidget {
  final User user;

  const MainPage({Key key, this.user}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageViewController = PageController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                accountName: Text(widget.user.displayName),
                accountEmail: Text("")),
            ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.search, color: Colors.black),
              title: Text(
                "Buscar",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.room_service, color: Colors.black),
              title: Text(
                "Meus serviços",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.add_rounded, color: Colors.black),
              title: Text(
                "Adicionar servico",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddService()),
                );
              },
            ),
            Divider(),
            ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.favorite, color: Colors.black),
              title: Text(
                "Favoritos",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.account_circle_outlined, color: Colors.black),
              title: Text(
                "Minha conta",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          widget.user.displayName,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            alignment: Alignment.center,
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            alignment: Alignment.center,
            icon: Icon(
              Icons.chat_outlined,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatField()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 50.0,
            child: PageView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(
                      color: Colors.black,
                    ), // set border width
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(
                            25.0)), // make rounded corner of border
                  ),
                  child: OutlinedButton(
                    child: Text(
                      "Estabelecimentos",
                      style:
                          GoogleFonts.lato(fontSize: 40, color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(
                      color: Colors.black,
                    ), // set border width
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(
                            25.0)), // make rounded corner of border
                  ),
                  child: OutlinedButton(
                    child: Text(
                      "Profissionais",
                      style:
                          GoogleFonts.lato(fontSize: 40, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(
                      color: Colors.black,
                    ), // set border width
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(
                            25.0)), // make rounded corner of border
                  ),
                  child: OutlinedButton(
                    child: Text(
                      "Serviços",
                      style:
                          GoogleFonts.lato(fontSize: 40, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
              child: Column(
            children: [
              Card(
                color: Colors.orangeAccent,
                elevation: 1.0,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(),
                      Text("TESTE - User"),
                      Text("TESTE - Manicure e Pedicure"),
                    ],
                  ),
                ),
              ),
              Divider(),
              Card(
                color: Colors.orangeAccent,
                elevation: 1.0,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(),
                      Text("TESTE - User"),
                      Text("TESTE - Manicure e Pedicure"),
                    ],
                  ),
                ),
              ),
              Divider(),
              Card(
                color: Colors.orangeAccent,
                elevation: 1.0,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(),
                      Text("TESTE - User"),
                      Text("TESTE - Manicure e Pedicure"),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  Future _signOut() async {
    await _auth.signOut();
  }
}

@override
Widget build(BuildContext context) {
  return (new Container(
    width: 250.0,
    height: 250.0,
    alignment: Alignment.center,
    decoration: new BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/Launcher_Icon.png'), fit: BoxFit.fill),
    ),
  ));
}
