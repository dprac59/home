import 'dart:io';

void main() {
 
  int number = int.parse(stdin.readLineSync()!);

  int systemAnswer = int.parse(stdin.readLineSync()!);
 
  int studentAnswer = int.parse(stdin.readLineSync()!);

  bool isSymmetric =
      (number ~/ 1000 == number % 10) &&
      ((number ~/ 100) % 10 == (number % 100) ~/ 10);

 
  if (isSymmetric) {
  
    if (studentAnswer == 1 && systemAnswer == 1) {
      print("YES");
    } else {
      print("NO");
    }
  } else {
  
    if (studentAnswer != 1 && systemAnswer != 1) {
      print("YES");
    } else {
      print("NO");
    }
  }
}
