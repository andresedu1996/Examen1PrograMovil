import 'dart:io';

void calculofibonacci() {
  print('¿Cuántos términos de la serie de Fibonacci deseas ver?');
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null || n <= 0) {
    print('Por favor, ingresa un número entero positivo.');
    return;
  }

  // Calcular y mostrar la serie de Fibonacci
  List<int> fibonacciSeries = fibonacci(n);
  print('Los primeros $n términos de la serie de Fibonacci son:');
  print(fibonacciSeries);
}

List<int> fibonacci(int n) {
  List<int> series = [];
  
  for (int i = 0; i < n; i++) {
    if (i == 0) {
      series.add(0);
    } else if (i == 1) {
      series.add(1);
    } else {
      series.add(series[i - 1] + series[i - 2]);
    }
  }
  
  return series;
}