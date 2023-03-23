import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'Messages.dart';

class DialogFlow extends StatefulWidget {
  const DialogFlow({super.key});

  @override
  State<DialogFlow> createState() => _DialogFlowState();
}

class _DialogFlowState extends State<DialogFlow> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  @override
  void initState() {
    DialogFlowtter.fromFile().then((value) => dialogFlowtter = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Virtual Agent 🤖'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: MessagesScreen(Messages: messages)),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 8,
              ),
              color: Colors.deepPurple,
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration:
                        InputDecoration(hintText: "Type your queries here 👇"),
                    controller: _controller,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  IconButton(
                      onPressed: () {
                        sendMessage(_controller.text);
                        _controller.clear();
                      },
                      icon: Icon(Icons.send))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage((Message(text: DialogText(text: [text]))), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
