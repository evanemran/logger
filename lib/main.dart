import 'package:flutter/material.dart';
import 'package:logger/LoginPage.dart';
import 'package:logger/RegistrationPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Screen',
      home: LoginScreen(),
    );
  }
}

