import 'imports/imports.dart';
//App start from here :-
Future main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

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
