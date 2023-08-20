// ignore_for_file: must_be_immutable

import 'package:chatgpt/screens/chatgpt_screen.dart';
import 'package:chatgpt/shared/helpre.dart';
import 'package:flutter/material.dart';

class KeyScreen extends StatelessWidget {
  KeyScreen({super.key});
  TextEditingController keyController = TextEditingController();
  final _mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 235, 20),
      body: SingleChildScrollView(
        child: Form(
          key: _mykey,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/ChatGPT Logo PNG.png'),
                  const Text(
                    'Enter your OpenAI key here ',
                    style: TextStyle(
                      fontSize: 35.0,
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.length == 51) {
                        return null;
                      } else {
                        return 'Enter valid key';
                      }
                    },
                    controller: keyController,
                    decoration: InputDecoration(
                      hintText: 'Enter your OpenAI key',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      if (_mykey.currentState!.validate()) {
                        Helper.saveUserData(
                            key: 'key', value: keyController.text);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ChatGptScreen()),
                            ModalRoute.withName('/'));
                      } else {
                        return;
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
