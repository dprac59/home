import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Введите 10 чисел:");

  for (int i = 0; i < 10; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int evenCount = 0;
  int divisibleBy3Count = 0;
  int sumGreaterThan100 = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    }
    if (num % 3 == 0) {
      divisibleBy3Count++;
    }
    if (num > 100) {
      sumGreaterThan100 += num;
    }
  }

  print("Количество чётных чисел: $evenCount");
  print("Количество чисел, кратных 3: $divisibleBy3Count");
  print("Сумма чисел больше 100: $sumGreaterThan100");
}
