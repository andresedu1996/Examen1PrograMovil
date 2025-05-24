import 'dart:io';

void main() {
  while (true) {
    print('Menu de operaciones matematicas:');
    print('1. Suma');
    print('2. Resta');
    print('3. Multiplicación');
    print('4. Division');
    print('5. Numeros primos en un rango');
    print('6. Numeros pares e impares en un rango');
    print('7. Secuencia Fibonacci');
    print('8. Calculo de areas geometricas');
    print('9. Salir');


    String? opcion = stdin.readLineSync();

    if (opcion == '9') {
      print('Saliendo del programa...');
      break;
    }
   }
  }