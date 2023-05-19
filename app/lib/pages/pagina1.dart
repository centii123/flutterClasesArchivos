import 'package:app/navbar/nabvar.dart';
import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});

  @override
  State<Pagina1> createState() => _pagina1();
}

class _pagina1 extends State<Pagina1> {
  TextEditingController nombre = TextEditingController();
  String datos = "hola";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: navpro(
        link: "/",
        tipo: "inicio",
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          margin: EdgeInsets.symmetric(horizontal: 10),
          /*decoration: BoxDecoration(
              //descorar cajas
              border: Border.all(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),*/

          child: TextField(
            controller: nombre,
            //input
            //desoration para decorar y es obligatorio inputDecoration
            decoration: const InputDecoration(
                //tipo de input
                //border: UnderlineInputBorder(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),

                //border: InputBorder.none,
                //otras funciones
                //hintText: "hola", //placeholder

                labelText: "nombre mio"),
          ),
        ),
        imprimir(dataos: datos),
        TextButton(
            onPressed: () {
              setState(() {
                datos = nombre.text;
              });
            },
            child: const Text("enviar"))
      ])),
    );
  }
}

class imprimir extends StatelessWidget {
  final String dataos;
  const imprimir({super.key, required this.dataos});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(dataos),
    );
    ;
  }
}



/*


class Pagina1 extends StatefulWidget {
  @override
  _Pagina1State createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  TextEditingController nombre = TextEditingController();
  String datos = "hola";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  labelText: "nombre mio",
                ),
              ),
            ),
            imprimir(dataos: datos),
            TextButton(
              onPressed: () {
                setState(() {
                  datos = nombre.text;
                });
              },
              child: Text("enviar"),
            ),
          ],
        ),
      ),
    );
  }
}

class imprimir extends StatelessWidget {
  final String dataos;
  const imprimir({Key? key, required this.dataos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(dataos),
    );
  }
}


 */
