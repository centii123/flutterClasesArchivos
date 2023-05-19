import 'dart:io';

void main() {
  //se necesita un contenedor inicial main
  print("hola mundo"); //print es como el console.log()
  var n1 = 4;
  var n2 = 5;
  int suma = n1 + n2;
  print("la suma es  $suma");
  print("digite su nombre:");
  String? nombre = stdin.readLineSync();
  //var nombre=stdin.readLineSync(); esta es otra forma
  //stdin.readLineSync(); sirve para pedir datos stdin-> nombre de la libreria. readLineSync()-> lectura de linea que es el dato que colocamos
  print('su nombre es $nombre');
  print("digite un numero:");
  var numero = stdin.readLineSync();
  int numero1 = int.parse(numero!);
  var sumaa = numero1 + 5;
  print("el numero es $numero1 $sumaa");
}
