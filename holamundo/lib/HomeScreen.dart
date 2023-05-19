import 'dart:html';

import 'package:flutter/material.dart';
import 'package:holamundo/appbar/appbarg.dart'; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(children: [
        ElevatedButton(
          child: Text('ir Second Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ],) 
      
    );
  }
}