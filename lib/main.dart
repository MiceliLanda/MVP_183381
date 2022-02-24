import 'package:flutter/material.dart';
import 'package:miceli_landa_jhonathan_183381_c2/Pages/Login/loginHome.dart';
import 'package:miceli_landa_jhonathan_183381_c2/Pages/Widgets/headers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      // home: HomeLogin(),
      initialRoute: 'canva',
      // routes: {'login': (context) => const HomeLogin()},
      routes: {'canva': (context) => const Contenedor()},
    );
  }
}
