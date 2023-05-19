import 'package:flutter/material.dart'; //en cada pagina va esto
import 'HomeScreen.dart';
import 'SecondScreen.dart';
import 'curso1/holamundo.dart';
import 'youtube/youtube.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ap',
      debugShowCheckedModeBanner: false, //esto quita esa barra fea al inicar
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/hola': (context)=> Holamundo(),
        '/youtube': (context)=> Youtube()
      },
    );
  }
}



