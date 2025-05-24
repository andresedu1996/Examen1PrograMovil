double suma(double a, double b) {
  return a + b;
}

double resta(double a, double b) {
  return a - b;
}

double multiplicacion(double a, double b) {
  return a * b;
}

double division(double a, double b) {
  if (b == 0) {
    throw ArgumentError("No se puede dividir entre cero.");
  }
  return a / b;
}
