import 'package:examen_1/examen_1.dart' as examen_1;
import 'dart:io';

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
        _realizarOperacion(suma, 'Suma');
        break;
      case 2:
        _realizarOperacion(resta, 'Resta');
        break;
      case 3:
        _realizarOperacion(multiplicacion, 'Multiplicación');
        break;
      case 4:
        _realizarOperacion(division, 'División');
        break;
      case 5:
        print('Función pendiente: Números primos');
        break;
      case 6:
        print('Función pendiente: Pares e impares');
        break;
      case 7:
        print('Función pendiente: Fibonacci');
        break;
      case 8:
        print('Función pendiente: Áreas geométricas');
        break;
      case 9:
        print('Saliendo del programa...');
        break;
      default:
        print('Opción inválida. Intente de nuevo.');
    }
  } while (opcion != 9);
}
void _realizarOperacion(
    double Function(double, double) operacion, String nombreOperacion) {
  stdout.write('Ingrese el primer número: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el segundo número: ');
  double b = double.parse(stdin.readLineSync()!);

  try {
    double resultado = operacion(a, b);
    print('El resultado de la $nombreOperacion es: $resultado');
  } catch (e) {
    print('Error: $e');
  }
}

// Funciones matemáticas básicas
double suma(double a, double b) => a + b;
double resta(double a, double b) => a - b;
double multiplicacion(double a, double b) => a * b;
double division(double a, double b) {
  if (b == 0) throw Exception('No se puede dividir por cero');
  return a / b;
}


