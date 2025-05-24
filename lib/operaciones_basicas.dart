import 'dart:io';

void suma() {
  
  print('Ingrese el primer número: ');
  String? input1 = stdin.readLineSync();
  double numero1 = double.parse(input1!);

  
  stdout.write('Ingrese el segundo número: ');
  String? input2 = stdin.readLineSync();
  double numero2 = double.parse(input2!);

  
  double suma = numero1 + numero2;


  print('La suma de $numero1 y $numero2 es: $suma');
}

void resta() {
  
  print('Ingrese el primer número: ');
  String? input1 = stdin.readLineSync();
  double numero1 = double.parse(input1!);

  
  stdout.write('Ingrese el segundo número: ');
  String? input2 = stdin.readLineSync();
  double numero2 = double.parse(input2!);

  
  double resta = numero1 - numero2;


  print('La resta de $numero1 y $numero2 es: $resta');
}

void multiplicacion() {
  
  print('Ingrese el primer número: ');
  String? input1 = stdin.readLineSync();
  double numero1 = double.parse(input1!);

  
  stdout.write('Ingrese el segundo número: ');
  String? input2 = stdin.readLineSync();
  double numero2 = double.parse(input2!);

  
  double multi = numero1 * numero2;


  print('La resta de $numero1 y $numero2 es: $multi');
}

void division() {
  
  print('Ingrese el primer número: ');
  String? input1 = stdin.readLineSync();
  double numero1 = double.parse(input1!);

  
  stdout.write('Ingrese el segundo número: ');
  String? input2 = stdin.readLineSync();
  double numero2 = double.parse(input2!);

   
     double division = numero1 / numero2;


  print('La division de $numero1 y $numero2 es: $division');
}

