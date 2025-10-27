import 'dart:io';
import 'dart:math';

void main() {

  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);


  double discriminant = b * b - 4 * a * c;


  if (discriminant > 0) {

    double x1 = (-b + sqrt(discriminant)) / (2 * a);
    double x2 = (-b - sqrt(discriminant)) / (2 * a);
    print("Два корня: $x1 и $x2");
  } else if (discriminant == 0) {

    double x = -b / (2 * a);
    print("Один корень: $x");
  } else {

    print("Нет действительных корней");
  }
}
