import 'dart:io';

// Función para verificar si un número es primo
bool esPrimo(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

// Función para obtener los números primos en un rango dado
List<int> primosEnRango(int inicio, int fin) {
  List<int> primos = [];
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      primos.add(i);
    }
  }
  return primos;
}

// Solicitar los números al usuario y mostrar los primos en el rango
void NumPrimoRango() {
  stdout.write('Ingrese el número de inicio: ');
  int? inicio = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Ingrese el número de fin: ');
  int? fin = int.tryParse(stdin.readLineSync() ?? '');

  if (inicio == null || fin == null) {
    print('Entrada inválida.');
    return;
  }

  List<int> primos = primosEnRango(inicio, fin);
  print('Números primos entre $inicio y $fin: $primos');
}