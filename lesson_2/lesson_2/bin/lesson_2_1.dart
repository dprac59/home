import "dart:io";

void main() {
  int? a, b;
  String? c, d;
  c = stdin.readLineSync();
  a = int.parse(c!);
  d = stdin.readLineSync();
  b = int.parse(d!);
  if (a < b) {
    print(a);
  } else {
    print(b);
  }
}
