import "dart:io";

void main() {
  print("Enter numb. n ");
  String? a = stdin.readLineSync();
  int? n;
  n = int.parse(a!);

  print("Enter numb. k ");
  String? b = stdin.readLineSync();
  int? k;
  k = int.parse(b!);

  print("Каждому.... ${n ~/ k}");
  print("В корзине.... ${n % k}");
}
