import 'package:flutter/material.dart';
import 'package:pixent/screen/login/login_option.dart';
import 'package:pixent/screen/login_otion2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login_option_(),
    );
  }
}
