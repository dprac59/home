import 'dart:io';
import 'dart:math';

void main() {
  print("Введите a");
  String? a1 = stdin.readLineSync();
  double a = double.parse(a1!);
  print("Введите b");
  String? b1 = stdin.readLineSync();
  double b = double.parse(b1!);
  print("Введите c");
  String? c1 = stdin.readLineSync();
  double c = double.parse(c1!);

  solveQuadratic(a, b, c);
}

void solveQuadratic(double a, double b, double c) {
  double d = pow(b, 2) - 4 * a * c;

  if (d < 0) {
    print("Нет вещественных корней");
    return;
  }

  double x1 = (-b - sqrt(d)) / (2 * a);
  double x2 = (-b + sqrt(d)) / (2 * a);

  print("Корень 1: $x1");
  print("Корень 2: $x2");
}
