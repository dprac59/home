import "dart:io";

void main() {
  int max = 1440;
  int hour = 60;
  print("Enter numb. n ");
  String? a = stdin.readLineSync();
  int? n, h, m;
  n = int.parse(a!);
  //Находим часы
  h = n ~/ hour;
  //находим минуты
  m = n % hour;
  //проверка если n больше чем max
  if (n > max) {
    print("Time.... ${n % max}");
    return null;
  }

  print("Time.... ${h}:${m}");
}
