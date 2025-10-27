import 'dart:io';

void main() {
  print("Введите высоту фигуры:");
  int height = int.parse(stdin.readLineSync()!);

  // Первая строка — все звёздочки
  print('*' * height);

  // Остальные строки
  for (int i = 1; i < height; i++) {
    String line = '';
    // Первый символ строки
    line += (i % 2 == 1) ? ' ' : '*';
    // Средние символы
    for (int j = 1; j < height - 1; j++) {
      if (j == i || j == height - i - 1) {
        line += '*';
      } else {
        line += ' ';
      }
    }
    // Последний символ строки
    line += (i % 2 == 1) ? ' ' : '*';
    print(line);
  }
}
