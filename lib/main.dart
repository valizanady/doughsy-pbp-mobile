import 'package:flutter/material.dart';
import 'package:doughsy_pbp/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blueGrey.shade800,              
          secondary: Colors.deepPurple.shade400,
        ),
      ),
      home: MyHomePage(),
    );
  }
}