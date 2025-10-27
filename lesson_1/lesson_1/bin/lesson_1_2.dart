import "dart:io";

void main() {
  print("Enter numb... ");
  String? a = stdin.readLineSync();
  double? b = double.parse(a!);
  print(b + 1);
  print(b - 1);
}
