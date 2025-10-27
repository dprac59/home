import "dart:io";

void main() {
  int? y;
  String? a;
  print("Enter year    ");
  a = stdin.readLineSync();
  y = int.parse(a!);
  if (y % 4 == 0) {
    if (y % 100 == 0) {
      if (y % 400 == 0) {
        print("yes");
      } else {
        print("no");
      }
    } else {
      print("no");
    }
  } else {
    print('no');
  }
}
