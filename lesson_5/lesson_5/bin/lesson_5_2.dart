import "dart:io";
import "dart:math";

void main() {
  String? a1, a2, a3, a4;
  print("First");
  a1 = stdin.readLineSync();
  print("Second");
  a2 = stdin.readLineSync();
  print("Third");
  a3 = stdin.readLineSync();
  print("Fourth");
  a4 = stdin.readLineSync();
  print("parsing");
  int b1, b2, b3, b4;
  b1 = int.parse(a1!);
  b2 = int.parse(a2!);
  b3 = int.parse(a3!);
  b4 = int.parse(a4!);
  parsing(b1, b2, b3, b4);
}

void parsing(int a, int b, int c, int d) {
  List<int> nums = [a, b, c, d];
  print("итог ");
  print(nums.reduce(min));
}
