import 'package:app/navbar/nabvar.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navpro(link: "/pagina2"),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.blue,
              child: Row(children: [
                Container(
                  child:
                      const Text("mama", style: TextStyle(color: Colors.white)),
                ),
                Container(
                  child: Icon(Icons.abc_sharp, color: Colors.green, size: 200),
                )
              ]),
            ),
            Container(
              child: Text("hola mundo"),
            ),
          ],
        ),
        Padding(
          //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
          padding:
              EdgeInsets.fromLTRB(20.0, 0, 20.0, 0), //padin por todos lados
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, //es como el justify de css
            children: [
              Container(
                child: Text("hola mundo"),
              ),
              Container(
                child: Text("hola mundo"),
              ),
              Icon(Icons.abc)
            ],
          ),
        )
      ]),
    );
  }
}
