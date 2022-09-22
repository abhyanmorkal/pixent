import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pixent/screen/login/login_otion2.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

   runApp(MyApp());
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
