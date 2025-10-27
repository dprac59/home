import 'dart:io';

void main() {
  print('Enter number ');
  String? name = stdin.readLineSync();
  double number = 0;

  try {
    number = double.parse(name!);
  } catch (e) {
    print('Error: некорректный ввод.');
    return;
  }

  print('Итог${(number / 2) * 3}');
}
