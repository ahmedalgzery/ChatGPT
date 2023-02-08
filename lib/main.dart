// ignore_for_file: library_private_types_in_public_api, unnecessary_null_comparison

import 'package:chatgpt/screens/chatgpt_screen.dart';
import 'package:chatgpt/screens/key_screen.dart';
import 'package:chatgpt/shared/helpre.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  Helper.init();
  
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatGPT App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  Helper.getUserData(key: 'key') == null ? KeyScreen() : const ChatGptScreen(),
    );
  }
}
