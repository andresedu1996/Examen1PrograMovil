import 'dart:io';
import 'package:examen_1/numeros_primos.dart';
import 'package:examen_1/operaciones_basicas.dart';
import 'package:examen_1/fibonacci.dart';
import 'package:examen_1/figuras_geo.dart';

import 'pareseimpares.dart';

void main(List<String> arguments) {
  int opcion;

  do {
    print('\n=== MENÚ PRINCIPAL ===');
    print('1. Suma');
    print('2. Resta');
    print('3. Multiplicación');
    print('4. División');
    print('5. Números Primos en un Rango');
    print('6. Números Pares e Impares en un Rango');
    print('7. Secuencia de Fibonacci');
    print('8. Cálculo de Áreas Geométricas');
    print('9. Salir');
    stdout.write('Seleccione una opción: ');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        suma();
        break;
      case 2:
        resta();
        break;
      case 3:
       multiplicacion();
        break;
      case 4:
        division();
        break;
      case 5:
        numPrimoRango();
        break;
      case 6:
        numerosPares();
        break;
      case 7:
        calculofibonacci();
        break;
      case 8:
        mainFiguras();
        break;
      case 9:
        print('Saliendo del programa...');
        break;
      default:
        print('Opción inválida. Intente de nuevo.');
    }
  } while (opcion != 9);
}
