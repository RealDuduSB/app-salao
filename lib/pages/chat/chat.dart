import 'package:flutter/material.dart';
import 'package:sbs_app/pages/chat/text_composer.dart';

class ChatField extends StatefulWidget {  

  @override
  _ChatFieldState createState() => _ChatFieldState();
}

class _ChatFieldState extends State<ChatField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
          centerTitle: true,
          elevation: 0.0,
        title: Text("Usuario*"),
      ),
      body: TextComposer(
        (text){
          print(text);
        }
      ),
    );
  }
}