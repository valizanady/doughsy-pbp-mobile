import 'package:flutter/material.dart';
import 'package:doughsy_pbp/screens/login.dart'; 
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.blueGrey.shade800,              
            secondary: Colors.deepPurple.shade400,
          ),
        ),
        home: const LoginPage(), // Define this widget or ensure you import the correct page
      ),
    );
  }
}
