import 'package:flutter/material.dart';

import 'componentes/videoCard.dart';
import '../appbar/appbarg.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // el scaffold es para extructurar el sitio
          appBar: MyAppBar(),
          //body es para el cuerpo, column es una columna y children es el contenido puede ser varios
          body: Column(children: [
              videoCard(),//esto es el componente
              videoCard()
          ])
    ); 
  }
}

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}