import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: const Text(
                  'Hola mundo',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 6.0,
                    color: Color.fromRGBO(102, 187, 106, 1),
                    fontFamily: 'cursive',
                  ),
                ),
              ),
              //CircleAvatar(
              // backgroundImage: AssetImage('images/persona11.jpg'),
              // radius: 150.0,

              Container(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network("https://picsum.photos/id/237/200/300"),
                    Image.network("https://picsum.photos/id/237/200/300"),
                    Image.network("https://picsum.photos/id/237/200/300"),
                    Image.network("https://picsum.photos/id/237/200/300"),
                    Image.network("https://picsum.photos/id/237/200/300"),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
