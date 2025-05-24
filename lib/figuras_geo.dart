// Dart CLI program for calculating areas and perimeters of geometric figures
import 'dart:io';
import 'dart:math';

void mainFiguras() {
  print('Figuras Geometricas!');
  while (true) {
    print('Que figuras deseas calcular?:');
    print('1. Círculo');
    print('2. Rectángulo');
    print('3. Triángulo');
    print('4. Cuadrado');
    print('5. Salir');
    stdout.write('Opción (1-5): ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Gracias por usar el calculador. ¡Adiós!');
      break;
    }

    switch (choice) {
      case '1':
        calcularCirculo();
        break;
      case '2':
        calcularRectangulo();
        break;
      case '3':
        calcularTriangulo();
        break;
      case '4':
        calcularCuadrado();
        break;
      default:
        print('Opción no válida, por favor intenta de nuevo.');
    }
  }
}

void calcularCirculo() {
  double radio = pedirDouble('Ingresa el radio del círculo: ');
  double area = pi * pow(radio, 2);
  double perimetro = 2 * pi * radio;

  print('Área del círculo: ${area.toStringAsFixed(2)}');
  print('Perímetro del círculo: ${perimetro.toStringAsFixed(2)}');
}

void calcularRectangulo() {
  double largo = pedirDouble('Ingresa el largo del rectángulo: ');
  double ancho = pedirDouble('Ingresa el ancho del rectángulo: ');
  double area = largo * ancho;
  double perimetro = 2 * (largo + ancho);

  print('Área del rectángulo: ${area.toStringAsFixed(2)}');
  print('Perímetro del rectángulo: ${perimetro.toStringAsFixed(2)}');
}

void calcularTriangulo() {
  double base = pedirDouble('Ingresa la base del triángulo: ');
  double altura = pedirDouble('Ingresa la altura del triángulo: ');
  double area = (base * altura) / 2;
  print('Área del triángulo: ${area.toStringAsFixed(2)}');

  print('¿Deseas calcular el perímetro? (s/n): ');
  String? resp = stdin.readLineSync();
  if (resp != null && (resp.toLowerCase() == 's' || resp.toLowerCase() == 'si')) {
    double lado1 = pedirDouble('Ingresa el lado 1 del triángulo: ');
    double lado2 = pedirDouble('Ingresa el lado 2 del triángulo: ');
    double perimetro = base + lado1 + lado2;
    print('Perímetro del triángulo: ${perimetro.toStringAsFixed(2)}');
  }
}

void calcularCuadrado() {
  double lado = pedirDouble('Ingresa el lado del cuadrado: ');
  double area = lado * lado;
  double perimetro = 4 * lado;
  print('Área del cuadrado: ${area.toStringAsFixed(2)}');
  print('Perímetro del cuadrado: ${perimetro.toStringAsFixed(2)}');
}

double pedirDouble(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        double valor = double.parse(input);
        if (valor > 0) {
          return valor;
        } else {
          print('Por favor, ingresa un número mayor que 0.');
        }
      } catch (e) {
        print('Entrada no válida. Por favor ingresa un número válido.');
      }
    }
  }
}

