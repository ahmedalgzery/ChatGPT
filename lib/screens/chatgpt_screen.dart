// ignore_for_file: library_private_types_in_public_api

import 'package:chatgpt/screens/info_screen.dart';
import 'package:chatgpt/shared/helpre.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

class ChatGptScreen extends StatefulWidget {
  const ChatGptScreen({super.key});

  @override
  _ChatGptScreenState createState() => _ChatGptScreenState();
}

class _ChatGptScreenState extends State<ChatGptScreen> {
  TextEditingController textController = TextEditingController();
  List messages = [];
  late ChatGPT chatGPT;
  late StreamSubscription _streamSubscription;
  final _mykey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    chatGPT = ChatGPT.instance;
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }

  void userMessage(String message) {
    setState(() {
      messages.insert(0, {'sender': 'user', 'message': message});
    });
    gptMessage(message);
    textController.clear();
  }

  void gptMessage(String message) {
    final request =
        CompleteReq(prompt: message, model: kTranslateModelV3, max_tokens: 200);
    _streamSubscription = chatGPT
        .builder(Helper.getUserData(key: 'key')!, orgId: "")
        .onCompleteStream(request: request)
        .listen((response) {
      print(response);
      setState(() {
        messages
            .insert(0, {'sender': 'gpt', 'message': response?.choices[0].text});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _mykey,
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('images/ChatGPT Logo PNG.png'),
            ),
          ),
          title: const Text('ChatGPT App'),
          actions: 
          [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const InfoScreen()),);
            }, icon: Icon(Icons.info_outline_rounded))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: messages[index]['sender'] == 'user'
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: messages[index]['sender'] == 'user'
                            ? Colors.green
                            : Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        messages[index]['message'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Enter valid text';
                        }
                      },
                      controller: textController,
                      decoration: InputDecoration(
                        hintText: 'Type your message here...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      if (_mykey.currentState!.validate()) {
                        userMessage(textController.text);
                      } else {
                        return;
                      }
                    },
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
