import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: contador(),
    );
  }
}

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('actividad 2'),
      ),
      body: Stack(
        //sirve para sobreponer cosas como los botones
        children: [
          ListView(
            //para el scroll y las liostas, tambien se puede usar SingleChildScrollView y con child y column
            children: [
              Column(
                children: [
                  Container(
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            "El numero es: $numero",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset("img/img1.png"),
                      )
                    ]),
                  )
                ],
              ),
            ],
          ),
          Align(
              //aling es para aliniar en un solo lugar
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (numero <= 19) {
                        numero = numero + 1;
                      }
                    });
                  },
                  child: Icon(Icons.add),
                ),
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      numero = 0;
                    });
                  },
                  child: Icon(Icons.restore),
                ),
              )),
        ],
      ),
    );
  }
}
