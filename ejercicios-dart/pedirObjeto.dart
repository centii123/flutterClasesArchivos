import 'dart:io';

import 'persona/interface.dart';
import 'persona/personaClass.dart';

void main() {
  //sin interfases
  var persona = {"nombre": "", "edad": 0};
  print("nombre:");
  persona['nombre'] = stdin.readLineSync()!;
  print("edad:");
  persona['edad'] = int.parse(stdin.readLineSync()!);

  //crear programa
  List<int> notas = [];
  int nota;
  int suma = 0;
  double promedio = 0;
  print(persona["nombre"]);

  

  //con interfases
  print("nombre2:");
  String nombre2 = stdin.readLineSync()!;
  print("edad2:");
  int edad = int.parse(stdin.readLineSync()!);
  Persona person = new PersonaCrear(nombre2, edad);
  

  for (var i = 0; i >= 0; i++) {
    print("digite sus notas");
    nota = int.parse(stdin.readLineSync()!);

    if (nota == 0) {
      break;
    }

    notas.add(nota);
  }

  for (var i = 0; i < notas.length; i++) {
    suma = suma + notas[i];
  }

  promedio = suma / notas.length;

  print('señor ${persona["nombre"]} con edad ${persona["edad"]} su promedio es de: ${promedio}');
  print('señor ${person.nombre} con edad ${person.edad} su promedio es de: ${promedio}');
}
