import 'dart:io';

void main() {
  List<int> notas = [];
  int nota;
  int suma = 0;
  double promedio = 0;

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

  print('su promedio es de: $promedio');
}
