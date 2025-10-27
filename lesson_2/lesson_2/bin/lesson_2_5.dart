import 'dart:io';

void main() {

  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

 
  if (a == b && b == c) {
    print(3);
  } else if (a == b || a == c || b == c) {
    print(2);
  } else {
    print(0);
  }
}
