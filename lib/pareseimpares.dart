import 'dart:io';

void numerosPares() {

  print('Ingrese el límite inferior del rango:');
  int rangoInferior = int.parse(stdin.readLineSync()!);

  print('Ingrese el límite superior del rango:');
  int rangoSuperior = int.parse(stdin.readLineSync()!);

  // Listas para almacenar números pares e impares
  List<int> numeroPar = [];
  List<int> numeroImpar = [];

  // Calcular números pares e impares
  for (int i = rangoInferior; i <= rangoSuperior; i++) {
    if (i % 2 == 0) {
      numeroPar.add(i);
    } else {
      numeroImpar.add(i);
    }
  }

  // Imprimir resultados
  print('Números pares en el rango [$rangoInferior, $rangoSuperior]: $numeroPar');
  print('Números impares en el rango [$rangoInferior, $rangoSuperior]: $numeroImpar');
}