import 'package:app/login/login.dart';
import 'package:app/pages/pagina1.dart';
import 'package:app/pages/pagina2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demoafff',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => login(),
        "/pagina1": (context) => Pagina1(),
        "/pagina2": (context) => MyForm()
      },
    );
  }
}
