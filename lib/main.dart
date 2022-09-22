import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pixent/screen/login_otion2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,

      
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: (() => const Login_option_()))
      ],
      
    );
  }
}
