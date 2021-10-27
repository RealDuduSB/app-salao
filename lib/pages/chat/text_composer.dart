import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {

  TextComposer(this.sendMessage);

  Function(String) sendMessage;

  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {
  @override
  final TextEditingController _messageController = TextEditingController();

  bool _isComposing = false;

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
      children: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.photo_camera)),
        Expanded(
          child: TextField(
            controller: _messageController,
            decoration:
                InputDecoration.collapsed(hintText: "Enviar uma mensagem"),
            onChanged: (text) {
              setState(() {
                _isComposing = text.isNotEmpty;
              });
            },
            onSubmitted: (text) {
              widget.sendMessage(text);
            },
          ),
        ),
        IconButton(
            onPressed: _isComposing ? () {} : null, icon: Icon(Icons.send))
      ],
    ));
  }
}
