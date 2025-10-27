import 'dart:io';

void main() {
  
  int x1 = int.parse(stdin.readLineSync()!);
  int y1 = int.parse(stdin.readLineSync()!);

  
  int x2 = int.parse(stdin.readLineSync()!);
  int y2 = int.parse(stdin.readLineSync()!);

  
  bool canMove = ((x2 - x1).abs() == 2 && (y2 - y1).abs() == 1) ||
                 ((x2 - x1).abs() == 1 && (y2 - y1).abs() == 2);


  if (canMove) {
    print("YES");
  } else {
    print("NO");
  }
}
