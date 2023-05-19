import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: contador());
  }
}

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  late int numero = 0;
  int? botom;

  var color = Color.fromARGB(255, 0, 146, 32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: const Text('Enrique Sebastian Mera Yela'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "el numero es: $numero",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: color,
                        radius: 100,
                        child: ClipOval(child: Image.asset("assets/u.jpg")),
                      ),
                    )
                  ],
                ),
              )),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
                  child: FloatingActionButton(
                      backgroundColor: color,
                      onPressed: () {
                        setState(() {
                          numero = 0;
                        });
                      },
                      child: Icon(
                        Icons.restore,
                        color: Colors.white,
                      ))),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          onTap: (int botomIndex) {
            setState(() {
              botom =
                  botomIndex; // Actualiza el índice del elemento seleccionado

              if (botom == 0) {
                if (numero >= 1) {
                  numero = numero - 1;
                }
              }
              if (botom == 1) {
                numero = numero + 1;
              }
            });
          },
          backgroundColor: color,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.remove),
              label: "Restar 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Sumar 1",
            ),
            // Agrega más elementos según sea necesario
          ],
          unselectedIconTheme: const IconThemeData(
              color: Color.fromARGB(255, 255, 255, 255)), //iconos de otro color
          unselectedItemColor: Colors.white, // labels de otro color
        ));
  }
}
